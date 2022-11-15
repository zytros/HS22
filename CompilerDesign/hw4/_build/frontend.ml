open Ll
open Llutil
open Ast

(* instruction streams ------------------------------------------------------ *)

(* As in the last project, we'll be working with a flattened representation
   of LLVMlite programs to make emitting code easier. This version
   additionally makes it possible to emit elements will be gathered up and
   "hoisted" to specific parts of the constructed CFG
   - G of gid * Ll.gdecl: allows you to output global definitions in the middle
     of the instruction stream. You will find this useful for compiling string
     literals
   - E of uid * insn: allows you to emit an instruction that will be moved up
     to the entry block of the current function. This will be useful for 
     compiling local variable declarations
*)

type elt = 
  | L of Ll.lbl             (* block labels *)
  | I of uid * Ll.insn      (* instruction *)
  | T of Ll.terminator      (* block terminators *)
  | G of gid * Ll.gdecl     (* hoisted globals (usually strings) *)
  | E of uid * Ll.insn      (* hoisted entry block instructions *)

type stream = elt list
let ( >@ ) x y = y @ x
let ( >:: ) x y = y :: x
let lift : (uid * insn) list -> stream = List.rev_map (fun (x,i) -> I (x,i))

(* Build a CFG and collection of global variable definitions from a stream *)
let cfg_of_stream (code:stream) : Ll.cfg * (Ll.gid * Ll.gdecl) list  =
    let gs, einsns, insns, term_opt, blks = List.fold_left
      (fun (gs, einsns, insns, term_opt, blks) e ->
        match e with
        | L l ->
           begin match term_opt with
           | None -> 
              if (List.length insns) = 0 then (gs, einsns, [], None, blks)
              else failwith @@ Printf.sprintf "build_cfg: block labeled %s has\
                                               no terminator" l
           | Some term ->
              (gs, einsns, [], None, (l, {insns; term})::blks)
           end
        | T t  -> (gs, einsns, [], Some (Llutil.Parsing.gensym "tmn", t), blks)
        | I (uid,insn)  -> (gs, einsns, (uid,insn)::insns, term_opt, blks)
        | G (gid,gdecl) ->  ((gid,gdecl)::gs, einsns, insns, term_opt, blks)
        | E (uid,i) -> (gs, (uid, i)::einsns, insns, term_opt, blks)
      ) ([], [], [], None, []) code
    in
    match term_opt with
    | None -> failwith "build_cfg: entry block has no terminator" 
    | Some term -> 
       let insns = einsns @ insns in
       ({insns; term}, blks), gs


(* compilation contexts ----------------------------------------------------- *)

(* To compile OAT variables, we maintain a mapping of source identifiers to the
   corresponding LLVMlite operands. Bindings are added for global OAT variables
   and local variables that are in scope. *)

module Ctxt = struct

  type t = (Ast.id * (Ll.ty * Ll.operand)) list
  let empty = []

  (* Add a binding to the context *)
  let add (c:t) (id:id) (bnd:Ll.ty * Ll.operand) : t = (id,bnd)::c

  (* Lookup a binding in the context *)
  let lookup (id:Ast.id) (c:t) : Ll.ty * Ll.operand =
    List.assoc id c

  (* Lookup a function, fail otherwise *)
  let lookup_function (id:Ast.id) (c:t) : Ll.ty * Ll.operand =
    match List.assoc id c with
    | Ptr (Fun (args, ret)), g -> Ptr (Fun (args, ret)), g
    | _ -> failwith @@ id ^ " not bound to a function"

  let lookup_function_option (id:Ast.id) (c:t) : (Ll.ty * Ll.operand) option =
    try Some (lookup_function id c) with _ -> None
  
end

(* compiling OAT types ------------------------------------------------------ *)

(* The mapping of source types onto LLVMlite is straightforward. Booleans and ints
   are represented as the corresponding integer types. OAT strings are
   pointers to bytes (I8). Arrays are the most interesting type: they are
   represented as pointers to structs where the first component is the number
   of elements in the following array.

   The trickiest part of this project will be satisfying LLVM's rudimentary type
   system. Recall that global arrays in LLVMlite need to be declared with their
   length in the type to statically allocate the right amount of memory. The 
   global strings and arrays you emit will therefore have a more specific type
   annotation than the output of cmp_rty. You will have to carefully bitcast
   gids to satisfy the LLVM type checker.
*)

let rec cmp_ty : Ast.ty -> Ll.ty = function
  | Ast.TBool  -> I1
  | Ast.TInt   -> I64
  | Ast.TRef r -> Ptr (cmp_rty r)

and cmp_rty : Ast.rty -> Ll.ty = function
  | Ast.RString  -> I8
  | Ast.RArray u -> Struct [I64; Array(0, cmp_ty u)]
  | Ast.RFun (ts, t) -> 
      let args, ret = cmp_fty (ts, t) in
      Fun (args, ret)

and cmp_ret_ty : Ast.ret_ty -> Ll.ty = function
  | Ast.RetVoid  -> Void
  | Ast.RetVal t -> cmp_ty t

and cmp_fty (ts, r) : Ll.fty =
  List.map cmp_ty ts, cmp_ret_ty r


let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Eq | Neq | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)

let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)

(* Compiler Invariants

   The LLVM IR type of a variable (whether global or local) that stores an Oat
   array value (or any other reference type, like "string") will always be a
   double pointer.  In general, any Oat variable of Oat-type t will be
   represented by an LLVM IR value of type Ptr (cmp_ty t).  So the Oat variable
   x : int will be represented by an LLVM IR value of type i64*, y : string will
   be represented by a value of type i8**, and arr : int[] will be represented
   by a value of type {i64, [0 x i64]}**.  Whether the LLVM IR type is a
   "single" or "double" pointer depends on whether t is a reference type.

   We can think of the compiler as paying careful attention to whether a piece
   of Oat syntax denotes the "value" of an expression or a pointer to the
   "storage space associated with it".  This is the distinction between an
   "expression" and the "left-hand-side" of an assignment statement.  Compiling
   an Oat variable identifier as an expression ("value") does the load, so
   cmp_exp called on an Oat variable of type t returns (code that) generates a
   LLVM IR value of type cmp_ty t.  Compiling an identifier as a left-hand-side
   does not do the load, so cmp_lhs called on an Oat variable of type t returns
   and operand of type (cmp_ty t)*.  Extending these invariants to account for
   array accesses: the assignment e1[e2] = e3; treats e1[e2] as a
   left-hand-side, so we compile it as follows: compile e1 as an expression to
   obtain an array value (which is of pointer of type {i64, [0 x s]}* ).
   compile e2 as an expression to obtain an operand of type i64, generate code
   that uses getelementptr to compute the offset from the array value, which is
   a pointer to the "storage space associated with e1[e2]".

   On the other hand, compiling e1[e2] as an expression (to obtain the value of
   the array), we can simply compile e1[e2] as a left-hand-side and then do the
   load.  So cmp_exp and cmp_lhs are mutually recursive.  [[Actually, as I am
   writing this, I think it could make sense to factor the Oat grammar in this
   way, which would make things clearer, I may do that for next time around.]]

 
   Consider globals7.oat

   /--------------- globals7.oat ------------------ 
   global arr = int[] null;

   int foo() { 
     var x = new int[3]; 
     arr = x; 
     x[2] = 3; 
     return arr[2]; 
   }
   /------------------------------------------------

   The translation (given by cmp_ty) of the type int[] is {i64, [0 x i64}* so
   the corresponding LLVM IR declaration will look like:

   @arr = global { i64, [0 x i64] }* null

   This means that the type of the LLVM IR identifier @arr is {i64, [0 x i64]}**
   which is consistent with the type of a locally-declared array variable.

   The local variable x would be allocated and initialized by (something like)
   the following code snippet.  Here %_x7 is the LLVM IR uid containing the
   pointer to the "storage space" for the Oat variable x.

   %_x7 = alloca { i64, [0 x i64] }*                              ;; (1)
   %_raw_array5 = call i64*  @oat_alloc_array(i64 3)              ;; (2)
   %_array6 = bitcast i64* %_raw_array5 to { i64, [0 x i64] }*    ;; (3)
   store { i64, [0 x i64]}* %_array6, { i64, [0 x i64] }** %_x7   ;; (4)

   (1) note that alloca uses cmp_ty (int[]) to find the type, so %_x7 has 
       the same type as @arr 

   (2) @oat_alloc_array allocates len+1 i64's 

   (3) we have to bitcast the result of @oat_alloc_array so we can store it
        in %_x7 

   (4) stores the resulting array value (itself a pointer) into %_x7 

  The assignment arr = x; gets compiled to (something like):

  %_x8 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7     ;; (5)
  store {i64, [0 x i64] }* %_x8, { i64, [0 x i64] }** @arr       ;; (6)

  (5) load the array value (a pointer) that is stored in the address pointed 
      to by %_x7 

  (6) store the array value (a pointer) into @arr 

  The assignment x[2] = 3; gets compiled to (something like):

  %_x9 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7      ;; (7)
  %_index_ptr11 = getelementptr { i64, [0 x  i64] }, 
                  { i64, [0 x i64] }* %_x9, i32 0, i32 1, i32 2   ;; (8)
  store i64 3, i64* %_index_ptr11                                 ;; (9)

  (7) as above, load the array value that is stored %_x7 

  (8) calculate the offset from the array using GEP

  (9) store 3 into the array

  Finally, return arr[2]; gets compiled to (something like) the following.
  Note that the way arr is treated is identical to x.  (Once we set up the
  translation, there is no difference between Oat globals and locals, except
  how their storage space is initially allocated.)

  %_arr12 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr    ;; (10)
  %_index_ptr14 = getelementptr { i64, [0 x i64] },                
                 { i64, [0 x i64] }* %_arr12, i32 0, i32 1, i32 2  ;; (11)
  %_index15 = load i64, i64* %_index_ptr14                         ;; (12)
  ret i64 %_index15

  (10) just like for %_x9, load the array value that is stored in @arr 

  (11)  calculate the array index offset

  (12) load the array value at the index 

*)

(* Global initialized arrays:

  There is another wrinkle: To compile global initialized arrays like in the
  globals4.oat, it is helpful to do a bitcast once at the global scope to
  convert the "precise type" required by the LLVM initializer to the actual
  translation type (which sets the array length to 0).  So for globals4.oat,
  the arr global would compile to (something like):

  @arr = global { i64, [0 x i64] }* bitcast 
           ({ i64, [4 x i64] }* @_global_arr5 to { i64, [0 x i64] }* ) 
  @_global_arr5 = global { i64, [4 x i64] } 
                  { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }

*) 



(* Some useful helper functions *)

(* Generate a fresh temporary identifier. Since OAT identifiers cannot begin
   with an underscore, these should not clash with any source variables *)
let gensym : string -> string =
  let c = ref 0 in
  fun (s:string) -> incr c; Printf.sprintf "_%s%d" s (!c)

(* Amount of space an Oat type takes when stored in the satck, in bytes.  
   Note that since structured values are manipulated by reference, all
   Oat values take 8 bytes on the stack.
*)
let size_oat_ty (t : Ast.ty) = 8L

(* Generate code to allocate a zero-initialized array of source type TRef (RArray t) of the
   given size. Note "size" is an operand whose value can be computed at
   runtime *)
let oat_alloc_array (t:Ast.ty) (size:Ll.operand) : Ll.ty * operand * stream =
  let ans_id, arr_id = gensym "array", gensym "raw_array" in
  let ans_ty = cmp_ty @@ TRef (RArray t) in
  let arr_ty = Ptr I64 in
  ans_ty, Id ans_id, lift
    [ arr_id, Call(arr_ty, Gid "oat_alloc_array", [I64, size])
    ; ans_id, Bitcast(arr_ty, Id arr_id, ans_ty) ]

(* Compiles an expression exp in context c, outputting the Ll operand that will
   recieve the value of the expression, and the stream of instructions
   implementing the expression. 

   Tips:
   - use the provided cmp_ty function!

   - string literals (CStr s) should be hoisted. You'll need to make sure
     either that the resulting gid has type (Ptr I8), or, if the gid has type
     [n x i8] (where n is the length of the string), convert the gid to a 
     (Ptr I8), e.g., by using getelementptr.

   - use the provided "oat_alloc_array" function to implement literal arrays
     (CArr) and the (NewArr) expressions

*)
(*A = Arith, c = Comparison*)
let compBopC = function
  | Eq -> Ll.Eq
  | Neq -> Ll.Ne
  | Lt -> Ll.Slt
  | Lte -> Ll.Sle
  | Gt -> Ll.Sgt
  | Gte -> Ll.Sge
  | _ -> failwith " is no comparison compBopC"

let compBopA = function
  | Mul -> Ll.Mul
  | Add -> Ll.Add
  | Sub -> Ll.Sub
  | And -> Ll.And
  | Or -> Ll.Or
  | IAnd -> Ll.And
  | IOr -> Ll.Or
  | Shl -> Ll.Shl
  | Shr -> Ll.Lshr
  | Sar -> Ll.Ashr
  | _ -> failwith "is no arithmetic operator compBopA"


let isArith = function
  | Mul | Add | Sub | And | Or | IAnd | IOr | Shl | Shr | Sar -> true
  | Eq | Neq | Lt | Lte | Gt | Gte -> false




let rec cmp_exp (c:Ctxt.t) (exp:Ast.exp node) : Ll.ty * Ll.operand * stream =

  let createArray c ety atomty elems uid =
    let elIndexes = List.combine elems (List.init (List.length elems) (fun a -> a)) in
    let getElemPList = List.map (fun _ -> gensym "gep") elIndexes in
    let getElemPStream = List.map (fun (e, i) -> I(List.nth getElemPList i, Gep(Ptr atomty, Id uid, [Const 0L; Const 1L; Const (Int64.of_int i)]))) elIndexes in
    let outStream = List.map (fun (e, i) -> I(gensym "store", Store(ety, e, Id (List.nth getElemPList i)))) elIndexes in
    let idxUID = gensym "idxUID" in
    [I(uid, Alloca(atomty))] >@
    [I(idxUID, Gep(Ptr atomty, Id uid, [Const 0L; Const 0L]))] >@
    [I(gensym "store", Store(I64, Const (Int64.of_int (List.length elems)), Id idxUID))] >@
    List.rev getElemPStream >@
    List.rev outStream
  in

  begin match exp.elt with
  | CNull a -> (cmp_ty (TRef a), Null, [])
  | CBool a -> (cmp_ty TBool, Const (if a then 1L else 0L), [])
  | CInt a -> (cmp_ty TInt, Const a, [])
  | CStr str -> 
    let aType = Array (1+String.length str, I8) in
    let stringpUID = gensym "stringp" in
    let stringUID = gensym "string" in
    let stringdUID = gensym "stringd" in
    (Ptr I8, Id stringpUID, [G(stringdUID, (aType, GString str))] >@
    [G(stringUID, (Ptr I8, GBitcast(Ptr aType, GGid stringdUID, (Ptr I8))))] >@
    [I (stringpUID, Load (Ptr (Ptr I8), Gid stringUID))]   
    )
  | CArr (t, e) -> 
    let atomty = Struct([I64; Array(List.length e, cmp_ty t)]) in
    let gType = Struct([I64; Array(0,cmp_ty t)]) in
    let eOps, getElems = List.split (List.map (fun e -> let x,y,c = cmp_exp c e in y,c) e) in
    let arrayUID = gensym "arrayUID" in
    let atomArrUID = gensym "atomArrUID" in
    let cStream = (List.fold_left (>@) [] getElems) >@
      createArray c (cmp_ty t) atomty eOps atomArrUID >@
      [I(arrayUID, Bitcast (Ptr atomty, Id atomArrUID, Ptr gType))]
    in
    (Ptr gType, Id arrayUID, cStream)
  | NewArr (t,size) -> 
    let _, op, stream = cmp_exp c size in
    let arrayType, op, stream' = oat_alloc_array t op in
    (arrayType, op, stream >@ stream')
  | Index (array, ind) ->
    let t, op, stream = cmp_exp c array in
    let eType =
      begin match t with
      | Ptr (Struct [_; Array(_, a)]) -> a
      | _ -> failwith "cmp_exp Index failure"
    end in
    let _, iop, stream' = cmp_exp c ind in
    let idxUID = gensym "idxUID" in
    let getArrUID = gensym "getArrUID" in
    (eType, Id getArrUID, stream >@ stream' >@ [I(idxUID, Gep(t, op, [Const 0L; Const 1L; iop]))] >@
    [I(getArrUID, Load(Ptr eType, Id idxUID))])
  | Id id ->
    let t, op = Ctxt.lookup id c in
    begin match op with
    | Id _ | Gid _ -> let locRefid = gensym "locRef" in begin match t with
      | Ptr n -> (n, Id locRefid, [I(locRefid, Load (t, op))])
      | _ -> failwith "cmp_exp Id failure"
    end
    | Const _ | Null -> (t, op, [])
  end
  | Call ({elt=Id funId}, fArgs) -> 
    let t, func = Ctxt.lookup_function funId c in
    let compArgs = List.map (fun a -> cmp_exp c a) fArgs in
    let actualArgs = List.map (fun (x,y,c) -> x,y) compArgs in
    let opForS = List.map (fun (x,y,c) -> c) compArgs in
    let argsForS = List.fold_left (>@) [] opForS in
    let callUID = gensym "callUID" in
    begin match t with
    | Ptr (Fun (_, targetType)) -> (targetType, Id callUID, argsForS >@ [I(callUID, Call (targetType, func, actualArgs))])
    | _ -> failwith "cmp_exp Id failure"
  end
  | Bop (op, abs1, abs2) -> 
    let t1, t2, absArg = typ_of_binop op in
    let retArg = cmp_ty absArg in
    let ty, op1, sta = cmp_exp c abs1 in
    let _, op2, sta' = cmp_exp c abs2 in
    let uid = gensym "bop" in
    begin match isArith op with
    | true -> (retArg, Id uid, sta >@ sta' >@ [I(uid, Ll.Binop (compBopA op, ty, op1, op2))])
    | false -> (retArg, Id uid, sta >@ sta' >@ [I(uid, Ll.Icmp (compBopC op, ty, op1, op2))])
  end
  | Uop (op, abs) -> 
    let t, absArg = typ_of_unop op in
    let retArg = cmp_ty absArg in
    let _, op', sta = cmp_exp c abs in
    let uopUID = gensym "uopUID" in
    begin match op with
    | Lognot -> (retArg, Id uopUID, sta >@ [I(uopUID, Ll.Binop (Xor, retArg, Const 1L, op'))])
    | Bitnot -> (retArg, Id uopUID, sta >@ [I(uopUID, Ll.Binop (Xor, retArg, Const (-1L), op'))])
    | Neg -> (retArg, Id uopUID, sta >@ [I(uopUID, Ll.Binop (Sub, retArg, Const 0L, op'))])
  end
  | _ -> failwith "hä?"
end

(* Compile a statement in context c with return typ rt. Return a new context, 
   possibly extended with new local bindings, and the instruction stream
   implementing the statement.

   Left-hand-sides of assignment statements must either be OAT identifiers,
   or an index into some arbitrary expression of array type. Otherwise, the
   program is not well-formed and your compiler may throw an error.

   Tips:
   - for local variable declarations, you will need to emit Allocas in the
     entry block of the current function using the E() constructor.

   - don't forget to add a bindings to the context for local variable 
     declarations
   
   - you can avoid some work by translating For loops to the corresponding
     While loop, building the AST and recursively calling cmp_stmt

   - you might find it helpful to reuse the code you wrote for the Call
     expression to implement the SCall statement

   - compiling the left-hand-side of an assignment is almost exactly like
     compiling the Id or Index expression. Instead of loading the resulting
     pointer, you just need to store to it!

 *)

let rec cmp_stmt (c:Ctxt.t) (rt:Ll.ty) (stmt:Ast.stmt node) : Ctxt.t * stream =
  begin match stmt.elt with
  | Ret None -> (c, [T (Ll.Ret (rt, None))])
  | Ret (Some retAbs) -> let tyOfE, retOp, sta = cmp_exp c retAbs in
    c, sta >@ [T(Ll.Ret (rt, Some retOp))]
  | Assn ({elt=lhs}, abs) ->
    begin match lhs with
    | Id id -> let ty, op, sta = cmp_exp c abs in (c, sta >@ [I((gensym "store"), Store (ty, op, snd (Ctxt.lookup id c)))])
    | Index (arr, idx) -> 
      let ty, op, sta = cmp_exp c arr in
      let _, opaux, sta' = cmp_exp c idx in
      let eType =
        begin match ty with
        | Ptr (Struct [_; Array(_, n)]) -> n
        | _ -> failwith "cmp_stmt Assn"
      end in
      let _, sOp, sta'' = cmp_exp c abs in
      let arridx = gensym "arridx" in
      (c, sta >@ sta' >@ sta'' >@ [I(arridx, Gep(ty, op, [Const 0L; Const 1L; opaux]))] >@ [I((gensym "store"), Store(eType, sOp, Id arridx))])
      | _ -> failwith "No resolvable lefthand side"
    end
  | Decl (id, abs) ->
    let ty, op, sta = cmp_exp c abs in
    let lid = gensym "localId" in
    (Ctxt.add c id (Ptr ty, Id lid), [E(lid, Alloca(ty))] >@ sta >@ [I((gensym "store"), Store(ty, op, Id lid))])
  | SCall ({elt =fExp}, absArgs) ->
    begin match fExp with
    | Id funid ->
      let ty, func = Ctxt.lookup_function funid c in
      let compArgs = List.map (fun a -> cmp_exp c a) absArgs in
      let args = List.map (fun (x,y,c) -> x,y) compArgs in
      let opStream = List.map (fun (x,y,c) -> c) compArgs in
      let argStream = List.fold_left (>@) [] opStream in
      let callUID = gensym "callUID" in
      begin match ty with
      | Ptr (Fun (_, tType)) -> (c, argStream >@ [I(callUID, Call (tType, func, args))])
      | _ -> failwith "cmp_stmt SCall"
      end
    | _ -> failwith "cmp_stmt SCall"
    end
  | If (cnd, ifs, elses) ->
    let ifTruelbl = gensym "ifTruelbl" in
    let ifFalselbl = gensym "ifFalselbl" in
    let ifEndlbl = gensym "ifEndlbl" in
    let ty, op, sta = cmp_exp c cnd in
    let cmpCBR = Cbr (op, ifTruelbl, ifFalselbl) in
    let _, sta1 = cmp_block c rt ifs in
    let _, sta2 = cmp_block c rt elses in
    (c, sta >@ [T(cmpCBR)] >@ [L(ifTruelbl)] >@ sta1 >@ [T(Br(ifEndlbl))] >@
      [L(ifFalselbl)] >@ sta2 >@ [T(Br(ifEndlbl))] >@ [L(ifEndlbl)])
  | While (cnd, s) -> 
    let ty, op, sta = cmp_exp c cnd in
    let jmpLabelEnd = gensym "while_end_jmp" in
    let jmpLabelBody = gensym "while_body_jmp" in
    let cmpCBR = Cbr (op, jmpLabelBody, jmpLabelEnd) in
    let _, loopBody = cmp_block c rt s in
    let _, opc, sta' = cmp_exp c cnd in
    let cmpCBR' = Cbr (opc, jmpLabelBody, jmpLabelEnd) in
    (c, sta >@ [T(cmpCBR)] >@ [L(jmpLabelBody)] >@ loopBody >@ sta' >@ [T(cmpCBR')] >@ [L(jmpLabelEnd)])
  | For (ini, cndM, afterM, block) -> 
    let cnd = 
      begin match cndM with
      | Some cnd -> cnd
      | None -> {loc=Range.norange; elt=CBool true}
    end in
    let after =
      begin match afterM with
      | Some a -> [a]
      | None -> []
    end in
    let cond, inis = List.fold_left (fun (i, s) d -> let addi, addsta = cmp_stmt i rt ({loc=Range.norange; elt=Decl(d)}) in
    (addi, s >@ addsta)) (c, []) ini in
    let _, completesta = cmp_stmt cond rt ({loc=Range.norange; elt=While(cnd, block @ after)}) in
    (c, inis >@ completesta)
  end


(* Compile a series of statements *)
and cmp_block (c:Ctxt.t) (rt:Ll.ty) (stmts:Ast.block) : Ctxt.t * stream =
  List.fold_left (fun (c, code) s -> 
      let c, stmt_code = cmp_stmt c rt s in
      c, code >@ stmt_code
    ) (c,[]) stmts



(* Adds each function identifer to the context at an
   appropriately translated type.  

   NOTE: The Gid of a function is just its source name
*)
let cmp_function_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
    List.fold_left (fun c -> function
      | Ast.Gfdecl { elt={ frtyp; fname; args } } ->
         let ft = TRef (RFun (List.map fst args, frtyp)) in
         Ctxt.add c fname (cmp_ty ft, Gid fname)
      | _ -> c
    ) c p 

(* Populate a context with bindings for global variables 
   mapping OAT identifiers to LLVMlite gids and their types.

   Only a small subset of OAT expressions can be used as global initializers
   in well-formed programs. (The constructors starting with C). 
*)
let compGlobalType e = 
    begin match e with
    | CNull a -> TRef (a)
    | CBool a -> TBool
    | CInt a -> TInt
    | CStr a -> TRef (RString)
    | CArr (ty, ns) -> TRef (RArray ty)
    | _ -> failwith "excpected global type cmp_global_ctxt"
  end

let cmp_global_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
  List.fold_left (fun c -> function
    | Ast.Gvdecl { elt={name; init}} -> 
        let o = compGlobalType init.elt in
        Ctxt.add c name (Ptr (cmp_ty o), Gid name)
    | _ -> c)
    c p
    

(* Compile a function declaration in global context c. Return the LLVMlite cfg
   and a list of global declarations containing the string literals appearing
   in the function.

   You will need to
   1. Allocate stack space for the function parameters using Alloca
   2. Store the function arguments in their corresponding alloca'd stack slot
   3. Extend the context with bindings for function variables
   4. Compile the body of the function using cmp_block
   5. Use cfg_of_stream to produce a LLVMlite cfg from 
 *)

let cmp_fdecl (c:Ctxt.t) (f:Ast.fdecl node) : Ll.fdecl * (Ll.gid * Ll.gdecl) list =
  let args = f.elt.args in
  let inps = List.map (fun (t, i) -> i) args in
  let inpsty = List.map (fun (t, i) -> cmp_ty t) args in
  let compArgTy = List.fold_left (fun a (t,i) -> (i, (cmp_ty t, gensym "args"))::a) [] args in
  let loc = List.fold_left (fun c (_,i) -> let (t,uid) = List.assoc i compArgTy in Ctxt.add c i (Ptr (t), Id uid)) c args in
  let initSta = List.fold_left (fun sta (_,i) -> let (ty, uid) = List.assoc i compArgTy in sta >@ [E(uid, Alloca(ty))] >@ [I((gensym " store"), Store(ty, Id i, Id uid))]) [] args in
  let funcType = cmp_ret_ty f.elt.frtyp in
  let _, sta = cmp_block loc funcType f.elt.body in
  let contrGraph, decls = cfg_of_stream (initSta >@ sta) in
  ({f_ty = (inpsty, funcType); f_param = inps; f_cfg = contrGraph}, decls)



(* Compile a global initializer, returning the resulting LLVMlite global
   declaration, and a list of additional global declarations.

   Tips:
   - Only CNull, CBool, CInt, CStr, and CArr can appear as global initializers
     in well-formed OAT programs. Your compiler may throw an error for the other
     cases

   - OAT arrays are always handled via pointers. A global array of arrays will
     be an array of pointers to arrays emitted as additional global declarations.
*)

let rec cmp_gexp c (e:Ast.exp node) : Ll.gdecl * (Ll.gid * Ll.gdecl) list =
  let ty = compGlobalType e.elt in
  begin match e.elt with
  | CNull a -> ((cmp_ty ty, GNull), [])
  | CInt a -> ((cmp_ty ty, GInt (a)), [])
  | CBool a -> ((cmp_ty ty, GInt (if a then 1L else 0L)), [])
  | CStr str -> 
    let strType = Array (1+String.length str, I8) in
    let stringd = gensym "stringd" in
    ((Ptr I8, GBitcast(Ptr strType, GGid stringd, (Ptr I8))), [(stringd, (Array (1+String.length str, I8), GString (str)))])
  | CArr (ty, sizes) ->
    let implType = Struct([I64; Array(List.length sizes, cmp_ty ty)]) in
    let absType = Struct([I64; Array(0, cmp_ty ty)]) in
    let globaldecs, genelemdec = List.split (List.map (fun e -> cmp_gexp c e) sizes) in
    let atomArrUID = gensym "atomArrUID" in
    ((Ptr absType, GBitcast(Ptr implType, GGid atomArrUID, Ptr absType)), [(atomArrUID, (implType, GStruct([(I64, GInt (Int64.of_int(List.length sizes)));
      (Array(List.length sizes, cmp_ty ty), GArray(globaldecs))])))] @ List.concat genelemdec)
  | _ -> failwith "failed cmp_gexp"
end

(* Oat internals function context ------------------------------------------- *)
let internals = [
    "oat_alloc_array",         Ll.Fun ([I64], Ptr I64)
  ]

(* Oat builtin function context --------------------------------------------- *)
let builtins =
  [ "array_of_string",  cmp_rty @@ RFun ([TRef RString], RetVal (TRef(RArray TInt)))
  ; "string_of_array",  cmp_rty @@ RFun ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", cmp_rty @@ RFun ([TRef RString],  RetVal TInt)
  ; "string_of_int",    cmp_rty @@ RFun ([TInt],  RetVal (TRef RString))
  ; "string_cat",       cmp_rty @@ RFun ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     cmp_rty @@ RFun ([TRef RString],  RetVoid)
  ; "print_int",        cmp_rty @@ RFun ([TInt],  RetVoid)
  ; "print_bool",       cmp_rty @@ RFun ([TBool], RetVoid)
  ]

(* Compile a OAT program to LLVMlite *)
let cmp_prog (p:Ast.prog) : Ll.prog =
  (* add built-in functions to context *)
  let init_ctxt = 
    List.fold_left (fun c (i, t) -> Ctxt.add c i (Ll.Ptr t, Gid i))
      Ctxt.empty builtins
  in
  let fc = cmp_function_ctxt init_ctxt p in

  (* build global variable context *)
  let c = cmp_global_ctxt fc p in

  (* compile functions and global variables *)
  let fdecls, gdecls = 
    List.fold_right (fun d (fs, gs) ->
        match d with
        | Ast.Gvdecl { elt=gd } -> 
           let ll_gd, gs' = cmp_gexp c gd.init in
           (fs, (gd.name, ll_gd)::gs' @ gs)
        | Ast.Gfdecl fd ->
           let fdecl, gs' = cmp_fdecl c fd in
           (fd.elt.fname,fdecl)::fs, gs' @ gs
      ) p ([], [])
  in

  (* gather external declarations *)
  let edecls = internals @ builtins in
  { tdecls = []; gdecls; fdecls; edecls }

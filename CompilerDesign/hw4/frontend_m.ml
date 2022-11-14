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
let is_arith : Ast.binop -> bool = function
  | Add  | Sub  | Mul  | And  | Or  | IAnd  | IOr  | Shl  | Shr  | Sar -> true
  | Eq | Neq | Lt | Lte | Gt | Gte -> false

let cmp_arith_bop : Ast.binop -> Ll.bop = function
  | Add -> Ll.Add
  | Sub -> Ll.Sub
  | Mul -> Ll.Mul
  | And -> Ll.And
  | Or -> Ll.Or
  | IAnd -> Ll.And
  | IOr -> Ll.Or
  | Shl -> Ll.Shl
  | Shr -> Ll.Lshr
  | Sar -> Ll.Ashr
  | _ -> failwith "binop is not an arithmetic operator"

let cmp_comparison_bop : Ast.binop -> Ll.cnd = function
  | Eq -> Eq
  | Neq -> Ne
  | Lt -> Slt
  | Lte -> Sle
  | Gt -> Sgt
  | Gte -> Sge
  | _ -> failwith "binop is not a comparison operator"

(* builds a raw array with type {i64, [? x ty]} given the elements and a destination uid *)
let build_array (c:Ctxt.t) (elem_ty:Ll.ty) (raw_ty:Ll.ty) (elems:Ll.operand list) (uid:Ll.uid) : stream =
  let len_ind = gensym "len_ind" in
  let elems_inds = List.combine elems (List.init (List.length elems) (fun n -> n)) in
  let geps = List.map (fun _ -> gensym "gep") elems_inds in
  let gep_stream = List.map (fun (el,ind) -> I(List.nth geps ind, Gep(Ptr raw_ty, Id uid, [Const 0L; Const 1L; Const (Int64.of_int ind)]))) elems_inds in
  let store_stream = List.map (fun (el,ind) -> I(gensym "store", Store(elem_ty, el, Id (List.nth geps ind)))) elems_inds in
  [I(uid, Alloca(raw_ty))] >@
  [I(len_ind, Gep(Ptr raw_ty, Id uid, [Const 0L; Const 0L]))] >@
  [I(gensym "store", Store(I64, Const (Int64.of_int @@ List.length elems), Id len_ind))] >@
  List.rev gep_stream >@
  List.rev store_stream

let rec cmp_exp (c:Ctxt.t) ({elt=exp}:Ast.exp node) : Ll.ty * Ll.operand * stream = begin match exp with
  | CNull t -> (cmp_ty (TRef t), Null, [])
  | CBool b -> (cmp_ty TBool, Const (if b then 1L else 0L), [])
  | CInt i -> (cmp_ty TInt, Const i, [])
  | CStr s ->
    let gid1 = gensym "raw_string" in
    let gid2 = gensym "string" in
    let uid2 = gensym "str_ptr" in
    let str_ty = Array (1 + String.length s, I8) in
    (Ptr I8, Id uid2,
      [G(gid1, (str_ty, GString s))] >@
      [G(gid2, (Ptr I8, GBitcast(Ptr str_ty, GGid gid1, (Ptr I8))))] >@
      [I (uid2, Load (Ptr (Ptr I8), Gid gid2))]
    )
  | CArr (ty, exs) ->
    let len = List.length exs in
    let raw_ty : Ll.ty = Struct([I64; Array(len, cmp_ty ty)]) in
    let general_ty : Ll.ty = Struct([I64; Array(0, cmp_ty ty)]) in
    let uid1 = gensym "raw_array" in
    let uid2 = gensym "array" in
    let elem_ops, elem_streams = List.split @@ List.map (fun e -> let a,b,c = cmp_exp c e in b,c) exs in
    let stream = (List.fold_left (>@) [] elem_streams) >@
                  build_array c (cmp_ty ty) raw_ty elem_ops uid1 >@
                  [I(uid2, Bitcast(Ptr raw_ty, Id uid1, Ptr general_ty))]
    in
    (Ptr general_ty, Id uid2, stream)
  | NewArr (ty, size_node) ->
    let _, op, stream = cmp_exp c size_node in
    let arr_ty, op, stream2 = oat_alloc_array ty op in
    (arr_ty, op, stream >@ stream2)
  | Index (arr_node, ind_node) ->
    let uid = gensym "array_index" in
    let uid2 = gensym "array_load" in
    let ty, op, stream = cmp_exp c arr_node in
    let elem_ty = begin match ty with
      | Ptr (Struct [_; Array(_, t)]) -> t
      | _ -> failwith "wtf: Array did not compile to struct type"
    end  in
    let _, ind_op, stream2 = cmp_exp c ind_node in
    (elem_ty, Id uid2, stream >@ stream2 >@ [
      I(uid, Gep(ty, op, [Const 0L; Const 1L; ind_op]))] >@ [
      I(uid2, Load(Ptr elem_ty, Id uid))
    ])
  | Id id ->
    let ty, op = Ctxt.lookup id c in
    begin match op with 
      | Gid _ | Id _ ->
        let uid = gensym "local_ref" in
        begin match ty with
          | Ptr x -> (x, Id uid, [I (uid, Load (ty, op))])
          | _ -> failwith "wtf: Ast.id does not resolve to stack"
        end
      | Null | Const _ -> (ty, op, [])
    end
  | Call ({elt=Id f_id}, nodes_args) ->
    let ty, f = Ctxt.lookup_function f_id c in
    let res = gensym "call" in
    let cmpd_args = List.map (fun n -> cmp_exp c n) nodes_args in
    let args = List.map (fun (a,b,c) -> a,b) cmpd_args in
    let streams_ops = List.map (fun (a,b,c) -> c) cmpd_args in
    let arg_stream = List.fold_left (>@) [] streams_ops in
    begin match ty with
      | Ptr (Fun (_, res_ty)) -> (res_ty, Id res, arg_stream >@ [I (res, Call (res_ty, f, args))])
      | _ -> failwith "wtf: call to non-function in exp"
    end
  | Bop (binop, node1, node2) ->
    let uid = gensym "bop" in 
    let t1,t2,rt_ast = typ_of_binop binop in
    let rt = cmp_ty rt_ast in
    let ty, op1, s1 = cmp_exp c node1 in
    let _, op2, s2 = cmp_exp c node2 in
    if is_arith binop then
      (rt, Id uid, s1 >@ s2 >@ [I (uid, Ll.Binop (cmp_arith_bop binop, ty, op1, op2))])
    else
      (rt, Id uid, s1 >@ s2 >@ [I (uid, Ll.Icmp (cmp_comparison_bop binop, ty, op1, op2))])
  | Uop (unop, node) ->
    let uid = gensym "uop" in 
    let t1,rt_ast = typ_of_unop unop in
    let rt = cmp_ty rt_ast in
    let _, op, stream = cmp_exp c node in
    begin match unop with
      | Lognot -> (rt, Id uid, stream >@ [I (uid, Ll.Binop (Xor, rt, Const 1L, op))])
      | Bitnot -> (rt, Id uid, stream >@ [I (uid, Ll.Binop (Xor, rt, Const Int64.minus_one, op))])
      | Neg -> (rt, Id uid, stream >@ [I (uid, Ll.Binop (Sub, rt, Const 0L, op))])
    end 
  | _ -> failwith "Call to non-ID function"
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
let rec cmp_stmt (c:Ctxt.t) (rt:Ll.ty) ({elt=stmt}:Ast.stmt node) : Ctxt.t * stream = begin match stmt with
  | Ret None -> (c, [T (Ll.Ret (rt, None))])
  | Ret (Some ret_node) ->
    let exp_ty, ret_op, stream = cmp_exp c ret_node in
    (* TODO: raise error if exp_ty /= rt ?? *)
    c, stream >@ [T (Ll.Ret (rt, Some ret_op))]
  | Assn ({elt=dest}, node) -> begin match dest with
      | Id id ->
        let ty, op, stream = cmp_exp c node in
        (c, stream >@ [I(gensym "store", Store(ty, op, snd @@ Ctxt.lookup id c))])
      | Index (arr_node, ind_node) ->
        let uid = gensym "array_index" in
        let ty, op, stream = cmp_exp c arr_node in
        let _, ind_op, stream2 = cmp_exp c ind_node in
        let elem_ty = begin match ty with
          | Ptr (Struct [_; Array(_, t)]) -> t
          | _ -> failwith "wtf: Array did not compile to struct type"
        end  in
        let _, op_src, stream3 = cmp_exp c node in
        (c, stream >@ stream2 >@ stream3 >@
          [I(uid, Gep(ty, op, [Const 0L; Const 1L; ind_op]))] >@
          [I(gensym "store", Store(elem_ty, op_src, Id uid))]
        )
      | _ -> failwith "Invalid left-hand side"
    end
  | Decl (id, node) ->
    let ty, op, stream = cmp_exp c node in
    let uid = gensym "local" in
    (Ctxt.add c id (Ptr ty, Id uid), [E(uid, Alloca(ty))]
                                      >@ stream >@ [I(gensym "store", Store(ty, op, Id uid))])
  | SCall ({elt=func_exp}, nodes_args) ->
    begin match func_exp with
    | Id f_id ->
      let ty, f = Ctxt.lookup_function f_id c in
      let res = gensym "call" in
      let cmpd_args = List.map (fun n -> cmp_exp c n) nodes_args in
      let args = List.map (fun (a,b,c) -> a,b) cmpd_args in
      let streams_ops = List.map (fun (a,b,c) -> c) cmpd_args in
      let arg_stream = List.fold_left (>@) [] streams_ops in
      begin match ty with
        | Ptr (Fun (_, res_ty)) -> (c, arg_stream >@ [I (res, Call (res_ty, f, args))])
        | _ -> failwith "wtf: call to non-function in stmt"
      end
    | _ -> failwith "wtf: call to non-Ast.Id function"
    end
  | If (cnd_node, if_block, else_block) ->
    let ty, op, stream = cmp_exp c cnd_node in
    let lbl1 = gensym "if_true" in
    let lbl2 = gensym "if_false" in
    let lbl3 = gensym "if_end" in
    let cbr_ins = Cbr (op, lbl1, lbl2) in
    let _, tr_stream = cmp_block c rt if_block in
    let _, fl_stream = cmp_block c rt else_block in
    (c, stream >@ [T(cbr_ins)]
        >@ [L(lbl1)] >@ tr_stream >@ [T(Br(lbl3))]
        >@ [L(lbl2)] >@ fl_stream >@ [T(Br(lbl3))]
        >@ [L(lbl3)])
  | While (cnd_node, block) ->
    let ty, op, stream = cmp_exp c cnd_node in
    let lbl1 = gensym "while_loop" in
    let lbl2 = gensym "while_end" in
    let cbr_ins = Cbr (op, lbl1, lbl2) in
    let _, loop_stream = cmp_block c rt block in
    let _, op2, stream2 = cmp_exp c cnd_node in
    let cbr_ins2 = Cbr (op2, lbl1, lbl2) in
    (c, stream >@ [T(cbr_ins)]
        >@ [L(lbl1)] >@ loop_stream >@ stream2 >@ [T(cbr_ins2)]
        >@ [L(lbl2)])
  | For (decls, cnd_node_opt, post_node_opt, block) ->
    let cnd_node = begin match cnd_node_opt with
      | Some cnd -> cnd
      | None -> {loc=Range.norange; elt=CBool true}
    end in
    let post_block = begin match post_node_opt with
      | Some post_stmt -> [post_stmt]
      | None -> []
    end in
    let c2,decl_stream = List.fold_left (
      fun (_c, stream) decl ->
      let new_c, new_stream = cmp_stmt _c rt ({loc=Range.norange; elt=Decl(decl)}) in
      (new_c, stream >@ new_stream)
    ) (c, []) decls in
    let _,wh_stream = cmp_stmt c2 rt ({loc=Range.norange; elt=While(cnd_node, block @ post_block)}) in
    (c,decl_stream >@ wh_stream)
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
let cmp_global_type (e : Ast.exp) : Ast.ty = match e with
    | CNull rty -> TRef (rty)
    | CBool b -> TBool
    | CInt i -> TInt
    | CStr s -> TRef( RString )
    | CArr (ty, exs) -> TRef ( RArray ty )
    | _ -> failwith "not an allowed global initializer"
let cmp_global_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
    List.fold_left (fun c -> function
      | Ast.Gvdecl { elt={ name; init } } ->
        let ft = cmp_global_type init.elt in
        Ctxt.add c name (Ptr (cmp_ty ft), Gid name)
      | _ -> c
    ) c p 

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
let cmp_ret_ty (ty : Ast.ret_ty) : Ll.ty = match ty with
  | RetVal t -> cmp_ty t
  | RetVoid -> Ll.Void

let cmp_fdecl (c:Ctxt.t) ({elt={frtyp; fname; args; body}}:Ast.fdecl node) : Ll.fdecl * (Ll.gid * Ll.gdecl) list =
  let params : Ll.uid list = List.map (fun (t,id) -> id) args in
  let param_tys : Ll.ty list = List.map (fun (t,id) -> cmp_ty t) args in
  let llty_uid_args = List.fold_left (fun l (t,id) -> (id, (cmp_ty t, gensym "args"))::l) [] args in
  let c_with_locals : Ctxt.t = List.fold_left (
    fun c (_,id) -> let (ty,uid) = List.assoc id llty_uid_args in Ctxt.add c id (Ptr (ty), Id uid)
    ) c args in
  let args_alloc_stream = List.fold_left (
    fun stream (_,id) ->
      let (ty,uid) = List.assoc id llty_uid_args in
      let uid2 = gensym "store" in 
      stream >@ [E(uid, Alloca(ty))] >@ [I(uid2, Store(ty, Id id, Id uid))]
    ) [] args in
  let fty = cmp_ret_ty frtyp in
  let _, stream = cmp_block c_with_locals fty body in
  let cfg, string_decls = cfg_of_stream (args_alloc_stream >@ stream) in
  ({f_ty = (param_tys, fty); f_param = params; f_cfg = cfg}, string_decls)

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
  let ty = cmp_global_type e.elt in
  begin match e.elt with
    | CNull rty -> ((cmp_ty ty, GNull), [])
    | CBool b -> ((cmp_ty ty, GInt (if b then 1L else 0L)), [])
    | CInt i -> ((cmp_ty ty, GInt (i)), [])
    | CStr s ->
      let gid = gensym "raw_string" in
      let str_ty = Array (1 + String.length s, I8) in
      ((Ptr I8, GBitcast(Ptr str_ty, GGid gid, (Ptr I8))),
        [(gid, (Array (1 + String.length s, I8), GString (s)))])
    | CArr (ty, exs) ->
      let len = List.length exs in
      let raw_ty : Ll.ty = Struct([I64; Array(len, cmp_ty ty)]) in
      let general_ty : Ll.ty = Struct([I64; Array(0, cmp_ty ty)]) in
      let gid = gensym "raw_array" in
      let elem_gdecls, elem_add_gdecls = List.split @@ List.map (fun e -> cmp_gexp c e) exs in
      ((Ptr general_ty, GBitcast(Ptr raw_ty, GGid gid, Ptr general_ty)),
        [(gid, (raw_ty, GStruct([(I64, GInt (Int64.of_int(len)));
                                (Array(len, cmp_ty ty), GArray(elem_gdecls))])))]
        @ List.concat elem_add_gdecls
      )
    | _ -> failwith "not an allowed global initializer"
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

(* ll ir compilation -------------------------------------------------------- *)

open Ll
open X86

(* Overview ----------------------------------------------------------------- *)

(* We suggest that you spend some time understanding this entire file and
   how it fits with the compiler pipeline before making changes.  The suggested
   plan for implementing the compiler is provided on the project web page.
*)


(* helpers ------------------------------------------------------------------ *)

(* Map LL comparison operations to X86 condition codes *)
let compile_cnd = function
  | Ll.Eq  -> X86.Eq
  | Ll.Ne  -> X86.Neq
  | Ll.Slt -> X86.Lt
  | Ll.Sle -> X86.Le
  | Ll.Sgt -> X86.Gt
  | Ll.Sge -> X86.Ge



(* locals and layout -------------------------------------------------------- *)

(* One key problem in compiling the LLVM IR is how to map its local
   identifiers to X86 abstractions.  For the best performance, one
   would want to use an X86 register for each LLVM %uid.  However,
   since there are an unlimited number of %uids and only 16 registers,
   doing so effectively is quite difficult.  We will see later in the
   course how _register allocation_ algorithms can do a good job at
   this.

   A simpler, but less performant, implementation is to map each %uid
   in the LLVM source to a _stack slot_ (i.e. a region of memory in
   the stack).  Since LLVMlite, unlike real LLVM, permits %uid locals
   to store only 64-bit data, each stack slot is an 8-byte value.

   [ NOTE: For compiling LLVMlite, even i1 data values should be
   represented as a 8-byte quad. This greatly simplifies code
   generation. ]

   We call the datastructure that maps each %uid to its stack slot a
   'stack layout'.  A stack layout maps a uid to an X86 operand for
   accessing its contents.  For this compilation strategy, the operand
   is always an offset from %rbp (in bytes) that represents a storage slot in
   the stack.   Ind3
*)

type layout = (uid * X86.operand) list

(* A context contains the global type declarations (needed for getelementptr
   calculations) and a stack layout. *)
type ctxt = { tdecls : (tid * ty) list
            ; layout : layout
            }

(* useful for looking up items in tdecls or layouts *)
let lookup m x = List.assoc x m


(* compiling operands  ------------------------------------------------------ *)

(* LLVM IR instructions support several kinds of operands.

   LL local %uids live in stack slots, whereas global ids live at
   global addresses that must be computed from a label.  Constants are
   immediately available, and the operand Null is the 64-bit 0 value.

     NOTE: two important facts about global identifiers:

     (1) You should use (Platform.mangle gid) to obtain a string
     suitable for naming a global label on your platform (OS X expects
     "_main" while linux expects "main").

     (2) 64-bit assembly labels are not allowed as immediate operands.
     That is, the X86 code: movq _gid %rax which looks like it should
     put the address denoted by _gid into %rax is not allowed.
     Instead, you need to compute an %rip-relative address using the
     leaq instruction:   leaq _gid(%rip).

   One strategy for compiling instruction operands is to use a
   designated register (or registers) for holding the values being
   manipulated by the LLVM IR instruction. You might find it useful to
   implement the following helper function, whose job is to generate
   the X86 instruction that moves an LLVM operand into a designated
   destination (usually a register).
*)

let convertOperand ctxt =
  function
  | Const i -> Imm (Lit i)
  | Id uid -> lookup ctxt.layout uid
  | Null -> Imm (Lit 0L)
  | _ -> failwith "Can not convert gid"

let compile_operand (ctxt:ctxt) (dest:X86.operand) : Ll.operand -> ins =
  fun x -> 
  begin match x with
  | Gid gid -> (Leaq, [Ind3 (Lbl (Platform.mangle gid), Rip); dest])
  | _ -> let source = convertOperand ctxt x in
  begin match source with
  | Imm _ | Reg _ -> (Movq, [source; dest])
  | Ind1 _ | Ind2 _ | Ind3 _ -> 
    begin match dest with
    | Imm _ | Reg _ -> (Movq, [source; dest])
    | Ind1 _ | Ind2 _ | Ind3 _ -> failwith "two mem op"
  end end end
    



(* compiling call  ---------------------------------------------------------- *)

(* You will probably find it helpful to implement a helper function that
   generates code for the LLVM IR call instruction.

   The code you generate should follow the x64 System V AMD64 ABI
   calling conventions, which places the first six 64-bit (or smaller)
   values in registers and pushes the rest onto the stack.  Note that,
   since all LLVM IR operands are 64-bit values, the first six
   operands will always be placed in registers.  (See the notes about
   compiling fdecl below.)

   [ NOTE: It is the caller's responsibility to clean up arguments
   pushed onto the stack, so you must free the stack space after the
   call returns. ]

   [ NOTE: Don't forget to preserve caller-save registers (only if
   needed). ]
   Why is this missing????????????????????
*)
let rec zip xs ys =
  begin match xs with
  | [] -> []
  | b::bs -> 
    begin match ys with
    | [] -> []
    | c::cs -> (b,c)::zip bs cs
  end
end

let id x = x
let compCall ctxt fn args ty dest =
  let callInsL = [compile_operand ctxt (Reg Rax) fn; Callq, [Reg Rax]] in
  let nArgs = zip (List.init (List.length args) id) (snd (List.split args)) in
  let getReg i =
    begin match i with
    | 0 -> Reg Rdi
    | 1 -> Reg Rsi
    | 2 -> Reg Rdx
    | 3 -> Reg Rcx
    | 4 -> Reg R08
    | 5 -> Reg R09
    | _ -> failwith ">= 6"
  end in
  let fetchArg ctxt i arg =
    if i < 6 then
      let dest = getReg i in
      [compile_operand ctxt (Reg Rax) arg; Movq, [Reg Rax; dest]]
    else
      [compile_operand ctxt (Reg Rax) arg; Pushq, [Reg Rax]]
  in
  let argsPos = List.concat (List.map (fun (i,arg) -> fetchArg ctxt i arg) (List.rev nArgs)) in
  

  let argsOnStack = List.length (List.filter (fun (i,arg) -> i >= 6) nArgs) in
  let resetStack = Addq, [Imm (Lit (Int64.of_int (8*argsOnStack))); Reg Rsp] in
  argsPos @ callInsL @ ((Movq, [Reg Rax; dest])::[resetStack])


(* compiling getelementptr (gep)  ------------------------------------------- *)

(* The getelementptr instruction computes an address by indexing into
   a datastructure, following a path of offsets.  It computes the
   address based on the size of the data, which is dictated by the
   data's type.

   To compile getelementptr, you must generate x86 code that performs
   the appropriate arithmetic calculations.
*)

(* [size_ty] maps an LLVMlite type to a size in bytes.
    (needed for getelementptr)

   - the size of a struct is the sum of the sizes of each component
   - the size of an array of t's with n elements is n * the size of t
   - all pointers, I1, and I64 are 8 bytes
   - the size of a named type is the size of its definition

   - Void, i8, and functions have undefined sizes according to LLVMlite.
     Your function should simply return 0 in those cases
*)
let rec size_ty (tdecls:(tid * ty) list) (t:Ll.ty) : int =
  begin match t with
  | Void | I8 | Fun _ -> 0
  | Ptr _ | I1 | I64-> 8
  | Array (n,s) -> n*(size_ty tdecls s)
  | Struct ts -> List.fold_right (+) (List.map (size_ty tdecls) ts) 0
  | Namedt a -> size_ty tdecls (lookup tdecls a)
end




(* Generates code that computes a pointer value.

   1. op must be of pointer type: t*

   2. the value of op is the base address of the calculation

   3. the first index in the path is treated as the index into an array
     of elements of type t located at the base address

   4. subsequent indices are interpreted according to the type t:

     - if t is a struct, the index must be a constant n and it
       picks out the n'th element of the struct. [ NOTE: the offset
       within the struct of the n'th element is determined by the
       sizes of the types of the previous elements ]

     - if t is an array, the index can be any operand, and its
       value determines the offset within the array.

     - if t is any other type, the path is invalid 

   5. if the index is valid, the remainder of the path is computed as
      in (4), but relative to the type f the sub-element picked out
      by the path so far
*)



let rec haskeltake n xs =
  if n <= 0 then [] else
  begin match xs with
    | y::ys -> y::(haskeltake (n-1) ys)
    | [] -> failwith "haskeltake list too short"
  end

let rec compileGEPAuxL ctxt ty p =
  begin match p with
  | [] -> []
  | op::ops ->
    begin match ty with
    | Struct tys ->
      begin match op with
      | Const n ->
        let nn = Int64.to_int n in
        let ty = List.nth tys nn in
        let numT = haskeltake nn tys in
        let numB = List.fold_right (+) (List.map (size_ty ctxt.tdecls) numT) 0 in
        [Addq, [Imm (Lit (Int64.of_int numB)); Reg Rax]] @ compileGEPAuxL ctxt ty ops
      | _ -> failwith "compileGEPAuxL failed"
    end
  | Array (n,ty) ->
    let elemSize = Int64.of_int (size_ty ctxt.tdecls ty) in
    [compile_operand ctxt (Reg Rcx) op; (Imulq, [Imm (Lit elemSize); Reg Rcx]); (Addq, [Reg Rcx; Reg Rax])] @ compileGEPAuxL ctxt ty ops
  | Namedt tid -> compileGEPAuxL ctxt (lookup ctxt.tdecls tid) p
  | _ -> failwith "compile GEP wrong base"
  end end


let compile_gep (ctxt:ctxt) (op : Ll.ty * Ll.operand) (path: Ll.operand list) : ins list =
  begin match fst op with
  | Ptr ty -> (compile_operand ctxt (Reg Rax) (snd op))::(compileGEPAuxL ctxt (Array (1, ty)) path)
  | _ -> failwith "compileGEP no pointr"
end

(* compiling instructions  -------------------------------------------------- *)

(* The result of compiling a single LLVM instruction might be many x86
   instructions.  We have not determined the structure of this code
   for you. Some of the instructions require only a couple of assembly
   instructions, while others require more.  We have suggested that
   you need at least compile_operand, compile_call, and compile_gep
   helpers; you may introduce more as you see fit.

   Here are a few notes:

   - Icmp:  the Setb instruction may be of use.  Depending on how you
     compile Cbr, you may want to ensure that the value produced by
     Icmp is exactly 0 or 1.

   - Load & Store: these need to dereference the pointers. Const and
     Null operands aren't valid pointers.  Don't forget to
     Platform.mangle the global identifier.

   - Alloca: needs to return a pointer into the stack

   - Bitcast: does nothing interesting at the assembly level
*)


let compile_insn (ctxt:ctxt) ((uid:uid), (i:Ll.insn)) : X86.ins list =
  let compBinOP ctxt binop op1 op2 dest =
    let op = compile_operand ctxt in
    let lltoX86 = begin match binop with
      | Add -> X86.Addq
      | Sub -> X86.Subq
      | Mul -> X86.Imulq
      | Shl -> X86.Shlq
      | Lshr -> X86.Shrq
      | Ashr -> X86.Sarq
      | And -> X86.Andq
      | Or -> X86.Orq
      | Xor -> X86.Xorq
    end in
    [op (Reg Rax) op1; op (Reg Rcx) op2; (lltoX86, [Reg Rcx; Reg Rax]); (Movq, [Reg Rax; dest])]
in
  let compAlloca n dest =
    [Subq, [Imm (Lit (Int64.of_int n)); Reg Rsp]; Movq, [Reg Rsp; dest]] in
  let compLoad ctxt ptr dest =
    let op = compile_operand ctxt in
    [op (Reg Rcx) ptr; Movq, [Ind2 Rcx; Reg Rax]; Movq, [Reg Rax; dest]] in
  let compStore ctxt ptr dest_ptr =
    let op = compile_operand ctxt in
    [op (Reg Rax) ptr; op (Reg Rcx) dest_ptr; Movq, [Reg Rax; Ind2 Rcx]] in
  let compICMP ctxt cnd op1 op2 dest =
    let op = compile_operand ctxt in
    [op (Reg Rcx) op1; op (Reg Rdx) op2; Movq, [Imm (Lit 0L); Reg Rax];
    Cmpq, [Reg Rdx; Reg Rcx]; Set (compile_cnd cnd), [Reg Rax]; Movq, [Reg Rax; dest]] in
  let compBitcast ctxt ptr dest =
      let op = compile_operand ctxt in
      [op (Reg Rax) ptr; Movq, [Reg Rax; dest]] in
  
  
let dest = convertOperand ctxt (Id uid) in
  begin match i with
    | Binop (binop, ty, op1, op2) -> compBinOP ctxt binop op1 op2 dest
    | Alloca (ty) -> compAlloca (size_ty ctxt.tdecls ty) dest
    | Load (ty, ptr) -> compLoad ctxt ptr dest
    | Store (ty, src, dest) -> compStore ctxt src dest
    | Icmp (cnd, ty, op1, op2) -> compICMP ctxt cnd op1 op2 dest
    | Call (ty, func, args) -> compCall ctxt func args ty dest     
    | Bitcast (ty1, ptr, ty2) -> compBitcast ctxt ptr dest
    | Gep (ty, op, ops) -> compile_gep ctxt (ty, op) ops @ [(Movq, [Reg Rax; dest])]
    end



(* compiling terminators  --------------------------------------------------- *)

(* prefix the function name [fn] to a label to ensure that the X86 labels are 
   globally unique . *)
let mk_lbl (fn:string) (l:string) = fn ^ "." ^ l

(* Compile block terminators is not too difficult:

   - Ret should properly exit the function: freeing stack space,
     restoring the value of %rbp, and putting the return value (if
     any) in %rax.

   - Br should jump

   - Cbr branch should treat its operand as a boolean conditional

   [fn] - the name of the function containing this terminator
*)
let compile_terminator (fn:string) (ctxt:ctxt) (t:Ll.terminator) : ins list =
  begin match t with
  | Ret (_, Some a) -> 
    [compile_operand ctxt (Reg Rax) a] @ [Movq, [Reg Rbp; Reg Rsp]; Popq, [Reg Rbp]; Retq, []]
    
  | Ret (_, None) -> [Movq, [Reg Rbp; Reg Rsp]; Popq, [Reg Rbp]; Retq, []]
  | Br lbl -> [Jmp, [Imm (Lbl (mk_lbl fn lbl))]]
  | Cbr (a, lbl1, lbl2) -> [Cmpq, [Imm (Lit 0L); convertOperand ctxt a]; J Neq, [Imm (Lbl (mk_lbl fn lbl1))]; Jmp, [Imm (Lbl (mk_lbl fn lbl2))]]
end

(* compiling blocks --------------------------------------------------------- *)

(* We have left this helper function here for you to complete. 
   [fn] - the name of the function containing this block
   [ctxt] - the current context
   [blk]  - LLVM IR code for the block
*)
let compile_block (fn:string) (ctxt:ctxt) (blk:Ll.block) : ins list =
  let synInsS = List.concat @@ List.map (compile_insn ctxt) blk.insns in
  synInsS @ compile_terminator fn ctxt (snd blk.term)

let compile_lbl_block fn lbl ctxt blk : elem =
  Asm.text (mk_lbl fn lbl) (compile_block fn ctxt blk)



(* compile_fdecl ------------------------------------------------------------ *)


(* This helper function computes the location of the nth incoming
   function argument: either in a register or relative to %rbp,
   according to the calling conventions.  You might find it useful for
   compile_fdecl.

   [ NOTE: the first six arguments are numbered 0 .. 5 ]
*)
let arg_loc (n : int) : operand =
  begin match n with
  | 0 -> Reg Rdi
  | 1 -> Reg Rsi
  | 2 -> Reg Rdx
  | 3 -> Reg Rcx
  | 4 -> Reg R08
  | 5 -> Reg R09
  | i -> if i >= 6 then (Ind3 (Lit (Int64.of_int ((i - 6) * 8 + 16)), Rbp)) else failwith "n < 0"
end



(* We suggest that you create a helper function that computes the
   stack layout for a given function declaration.

   - each function argument should be copied into a stack slot
   - in this (inefficient) compilation strategy, each local id
     is also stored as a stack slot.
   - see the discussion about locals

*)

let configUIDs (block_, lblBlock) = 
  let blockUIDs {insns; term} = List.map fst insns in
  let blocks = [block_] @ List.map snd lblBlock in
  List.concat (List.map blockUIDs blocks)

let stack_layout (args : uid list) ((block, lbled_blocks):cfg) : layout =
  let idents = args @ configUIDs (block, lbled_blocks) in
  let stackArgN num = Ind3 (Lit (Int64.of_int ( -(1 + num) * 8)), Rbp) in

  List.map (fun (uid, a) -> (uid, stackArgN a)) (zip idents (List.init (List.length idents) (id)))

(* The code for the entry-point of a function must do several things:

   - since our simple compiler maps local %uids to stack slots,
     compiling the control-flow-graph body of an fdecl requires us to
     compute the layout (see the discussion of locals and layout)

   - the function code should also comply with the calling
     conventions, typically by moving arguments out of the parameter
     registers (or stack slots) into local storage space.  For our
     simple compilation strategy, that local storage space should be
     in the stack. (So the function parameters can also be accounted
     for in the layout.)

   - the function entry code should allocate the stack storage needed
     to hold all of the local stack slots.
*)
let compile_fdecl (tdecls:(tid * ty) list) (name:string) ({ f_ty; f_param; f_cfg }:fdecl) : prog =
  let pushArg a = (Pushq, [arg_loc a]) in

  let entryLL = fst f_cfg in
  let blocksLL = snd f_cfg in
  let layout = stack_layout f_param f_cfg in
  let ctxt = {tdecls = tdecls;layout = layout} in
  let blocksSyn = List.map (fun (l, b) -> compile_lbl_block name l ctxt b) blocksLL in
  let entryInsSyn = compile_block name ctxt entryLL in
  let entrySyn = Asm.gtext (Platform.mangle name) ([Pushq, [Reg Rbp]; Movq, [Reg Rsp; Reg Rbp]] @ 
    List.map pushArg (List.init (List.length f_param) id) @ 
    [(Subq, [Imm (Lit (Int64.mul 8L (Int64.of_int (List.length (configUIDs f_cfg))))); Reg Rsp])] @ entryInsSyn) in
  [entrySyn] @ blocksSyn




(* compile_gdecl ------------------------------------------------------------ *)
(* Compile a global value into an X86 global data declaration and map
   a global uid to its associated X86 label.
*)
let rec compile_ginit : ginit -> X86.data list = function
  | GNull     -> [Quad (Lit 0L)]
  | GGid gid  -> [Quad (Lbl (Platform.mangle gid))]
  | GInt c    -> [Quad (Lit c)]
  | GString s -> [Asciz s]
  | GArray gs | GStruct gs -> List.map compile_gdecl gs |> List.flatten
  | GBitcast (t1,g,t2) -> compile_ginit g

and compile_gdecl (_, g) = compile_ginit g


(* compile_prog ------------------------------------------------------------- *)
let compile_prog {tdecls; gdecls; fdecls} : X86.prog =
  let g = fun (lbl, gdecl) -> Asm.data (Platform.mangle lbl) (compile_gdecl gdecl) in
  let f = fun (name, fdecl) -> compile_fdecl tdecls name fdecl in
  (List.map g gdecls) @ (List.map f fdecls |> List.flatten)

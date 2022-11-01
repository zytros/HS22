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
   the stack.
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
let translate_operand (ctxt:ctxt) : Ll.operand -> X86.operand = function
  | Null -> Imm (Lit 0L)
  | Const i -> Imm (Lit i)
  | Id uid -> lookup ctxt.layout uid
  | _ -> failwith "Cannot translate global labels to X86.operand"
let compile_operand (ctxt:ctxt) (dest:X86.operand) : Ll.operand -> ins = fun x -> begin match x with
  | Gid gid -> (Leaq, [Ind3 (Lbl (Platform.mangle gid), Rip); dest])
  | _ -> let src = translate_operand ctxt x in begin
    match src with
    | Imm _ | Reg _ -> (Movq, [src; dest])
    | Ind1 _ | Ind2 _ | Ind3 _ -> begin match dest with
      | Imm _ | Reg _ -> (Movq, [src; dest])
      | Ind1 _ | Ind2 _ | Ind3 _ -> failwith "Cannot compile_operand for two memory operands"
    end
  end
end


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
*)
let move_argument (ctxt : ctxt) (n : int) (arg : Ll.operand) : X86.ins list =
  if n < 6 then
    let dest = (List.nth [Reg Rdi; Reg Rsi; Reg Rdx; Reg Rcx; Reg R08; Reg R09] n) in
    (compile_operand ctxt (Reg Rax) arg) :: (Movq, [Reg Rax; dest]) :: []
  else
    (compile_operand ctxt (Reg Rax) arg) :: (Pushq, [Reg Rax]) :: []

let compile_call (ctxt : ctxt) (ty : Ll.ty) (fn : Ll.operand) (args : (Ll.ty * Ll.operand) list) (dest : X86.operand) : X86.ins list = 
  let nums_args = List.combine (List.init (List.length args) (fun n -> n)) (snd @@ List.split args) in
  let args_insns = List.concat @@ List.map (fun (i,arg) -> move_argument ctxt i arg) (List.rev nums_args) in
  let call_insn = compile_operand ctxt (Reg Rax) fn :: (Callq, [Reg Rax]) :: [] in
  let num_stack_args = List.length @@ List.filter (fun (i,arg) -> i >= 6) nums_args in
  let cleanup_insns : X86.ins = (Addq, [Imm (Lit (Int64.of_int (8*num_stack_args))); Reg Rsp]) in
  args_insns @ call_insn @ ((Movq, [Reg Rax; dest]) :: [cleanup_insns])


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
let rec size_ty (tdecls : (tid * ty) list) (t:Ll.ty) : int = begin match t with
| Void | I8 | Fun _ -> 0
| I1 | I64 | Ptr _ -> 8
| Struct mems -> List.fold_right (+) (List.map (size_ty tdecls) mems) 0
| Array (n, ty) -> n * (size_ty tdecls ty)
| Namedt tid -> size_ty tdecls (lookup tdecls tid)
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
(*let rec string_of_ty : Ll.ty -> string = function
  | Void -> "void"
  | I8 -> "i8"
  | Fun _ -> "func"
  | I1 -> "i1"
  | I64 -> "i64"
  | Ptr ty -> "(ptr to " ^ string_of_ty ty ^ ")"
  | Struct tys -> "struct"
  | Array (i, ty) -> string_of_int i ^ " x " ^ string_of_ty ty
  | Namedt tid -> "type = " ^ tid
let string_of_lloperand : Ll.operand -> string = function
  | Null -> "Null"
  | Const i -> Int64.to_string i
  | Gid gid -> "@" ^ gid
  | Id uid -> "%" ^ uid 

let map_concat s f l = String.concat s @@ List.map f l*)

let rec take n ls =
  if n <= 0 then [] else
  begin match ls with
    | a :: a' -> a :: (take (n-1) a')
    | [] -> failwith "list not long enough"
  end

let rec gep_insns (ctxt:ctxt) (ty : Ll.ty) (path : Ll.operand list) : X86.ins list =
begin match path with
  | [] -> []
  | op :: path' ->
    begin match ty with
      | (Struct tys) ->
        begin match op with
          | Const i64 ->
            let i = Int64.to_int i64 in
            let ty = List.nth tys i in
            let mems_skipped = take i tys in
            let bytes_skipped = List.fold_right (+) (List.map (size_ty ctxt.tdecls) mems_skipped) 0 in
              (Addq, [Imm (Lit (Int64.of_int bytes_skipped)); Reg Rax]) :: gep_insns ctxt ty path'
          | _ -> failwith "can only index into structs using constants"
        end
      | Array (n, ty) -> 
        let size_of_elem = Int64.of_int @@ size_ty ctxt.tdecls ty in
          compile_operand ctxt (Reg Rcx) op :: (Imulq, [Imm (Lit size_of_elem); Reg Rcx]) :: (Addq, [Reg Rcx; Reg Rax]) :: gep_insns ctxt ty path'
      | Namedt tid -> gep_insns ctxt (lookup ctxt.tdecls tid) path
      | Ptr ty -> failwith "cannot index into pointers"
      | Void | I1 | I8 | I64 -> failwith "cannot index into constants"
      | Fun _ -> failwith "cannot index into functions"
    end
end

let compile_gep (ctxt:ctxt) ((ty_ptr, base) : Ll.ty * Ll.operand) (path : Ll.operand list) (dest : X86.operand) : ins list =
  begin match ty_ptr with
    | Ptr ty -> (compile_operand ctxt (Reg Rax) base) ::
                ((gep_insns ctxt (Array (1, ty)) path)
                @ [(Movq, [Reg Rax; dest])])
    | _ -> failwith "type argument for GEP must be pointer"
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
let compile_binop (ctxt:ctxt) (bop : Ll.bop) (op1 : Ll.operand) (op2 : Ll.operand) (dest : X86.operand)  : X86.ins list =
  let op = compile_operand ctxt in
  let bop_ins = begin match bop with
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
    op (Reg Rax) op1 :: op (Reg Rcx) op2 :: (bop_ins, [Reg Rcx; Reg Rax]) :: (Movq, [Reg Rax; dest]) :: []

and compile_alloca (n : int) (dest : X86.operand) : X86.ins list =
  (Subq, [Imm (Lit (Int64.of_int n)); Reg Rsp]) :: (Movq, [Reg Rsp; dest]) :: []

and compile_load (ctxt:ctxt) (ptr : Ll.operand) (dest : X86.operand) : X86.ins list =
  let op = compile_operand ctxt in
  op (Reg Rcx) ptr :: (Movq, [Ind2 Rcx; Reg Rax]) :: (Movq, [Reg Rax; dest]) :: []

and compile_store (ctxt:ctxt) (ptr : Ll.operand) (dest_ptr : Ll.operand) : X86.ins list =
  let op = compile_operand ctxt in
  op (Reg Rax) ptr :: op (Reg Rcx) dest_ptr :: (Movq, [Reg Rax; Ind2 Rcx]) :: []

and compile_bitcast (ctxt:ctxt) (ptr : Ll.operand) (dest : X86.operand) : X86.ins list =
  let op = compile_operand ctxt in
  op (Reg Rax) ptr :: (Movq, [Reg Rax; dest]) :: []

and compile_icmp (ctxt:ctxt) (cnd : Ll.cnd) (op1 : Ll.operand) (op2 : Ll.operand) (dest : X86.operand) : X86.ins list =
  let op = compile_operand ctxt in
  op (Reg Rcx) op1 :: op (Reg Rdx) op2 ::(Movq, [Imm (Lit 0L); Reg Rax]) :: (Cmpq, [Reg Rdx; Reg Rcx]) :: (Set (compile_cnd cnd), [Reg Rax]) :: (Movq, [Reg Rax; dest]) :: []

let compile_insn (ctxt:ctxt) ((uid:uid), (i:Ll.insn)) : X86.ins list =
  let dest = translate_operand ctxt (Id uid) in
  begin match i with
    | Binop (bop, ty, op1, op2) -> compile_binop ctxt bop op1 op2 dest
    | Alloca (ty) -> compile_alloca (size_ty ctxt.tdecls ty) dest
    | Load (ty, ptr) -> compile_load ctxt ptr dest
    | Store (ty, src, dest_ptr) -> compile_store ctxt src dest_ptr
    | Icmp (cnd, ty, op1, op2) -> compile_icmp ctxt cnd op1 op2 dest
    | Call (ty, func, args) -> compile_call ctxt ty func args dest
    | Bitcast (ty1, ptr, ty2) -> compile_bitcast ctxt ptr dest
    | Gep (ty, op, ops) -> compile_gep ctxt (ty, op) ops dest
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
  let epilogue = (Movq, [Reg Rbp; Reg Rsp]) :: (Popq, [Reg Rbp]) :: (Retq, []) :: [] in
  begin match t with
    | Ret (_, Some arg) -> compile_operand ctxt (Reg Rax) arg :: epilogue
    | Ret (_, None) -> epilogue
    | Br lbl -> (Jmp, [Imm (Lbl (mk_lbl fn lbl))]) :: []
    (* if arg = 1 then lbl1 else lbl2 *)
    | Cbr (arg, lbl1, lbl2) -> (Cmpq, [Imm (Lit 0L); translate_operand ctxt arg]) :: (J Neq, [Imm (Lbl (mk_lbl fn lbl1))]) :: (Jmp, [Imm (Lbl (mk_lbl fn lbl2))]) :: []
  end


(* compiling blocks --------------------------------------------------------- *)

(* We have left this helper function here for you to complete. 
   [fn] - the name of the function containing this block
   [ctxt] - the current context
   [blk]  - LLVM IR code for the block
*)
let compile_block (fn:string) (ctxt:ctxt) ({insns; term}:Ll.block) : ins list =
  let ins_asm = List.concat @@ List.map (compile_insn ctxt) insns in
  ins_asm @ compile_terminator fn ctxt (snd term)

let compile_lbl_block fn lbl ctxt blk : elem =
  Asm.text (mk_lbl fn lbl) (compile_block fn ctxt blk)



(* compile_fdecl ------------------------------------------------------------ *)


(* This helper function computes the location of the nth incoming
   function argument: either in a register or relative to %rbp,
   according to the calling conventions.  You might find it useful for
   compile_fdecl.

   [ NOTE: the first six arguments are numbered 0 .. 5 ]
*)
let arg_loc (n : int) : X86.operand =
  if n < 6 then (List.nth [Reg Rdi; Reg Rsi; Reg Rdx; Reg Rcx; Reg R08; Reg R09] n) else Ind3 (Lit (Int64.of_int ((n-6)*8+16)), Rbp)

(* We suggest that you create a helper function that computes the
   stack layout for a given function declaration.

   - each function argument should be copied into a stack slot
   - in this (inefficient) compilation strategy, each local id
     is also stored as a stack slot.
   - see the discussion about locals

*)
let arg_loc_stack (n : int) : X86.operand =
  Ind3 (Lit (Int64.of_int (-(n+1)*8)), Rbp)

let uids_in_block ({insns; term} : Ll.block) : uid list =
  List.map fst insns

let uids_in_cfg ((block, lbled_blocks):cfg) : uid list =
  let all_blocks = block :: List.map snd lbled_blocks in
  List.concat @@ List.map uids_in_block all_blocks

let count_uids (cfg : cfg) : int64 =
  Int64.of_int (List.length @@ uids_in_cfg cfg)

let stack_layout (args : uid list) (cfg : cfg) : layout =
  let all_uids = args @ uids_in_cfg cfg in
  List.map (fun (uid,n) -> (uid, arg_loc_stack n)) (List.combine all_uids (List.init (List.length all_uids) (fun n -> n)))
  

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
let copy_arg_to_stack n : ins =
  (Pushq, [arg_loc n])

let compile_fdecl (tdecls:(tid * ty) list) (name:string) ({ f_ty; f_param; f_cfg }:fdecl) : prog =
  (* Push RBP *)
  (* RBP <- RSP *)
  (* Push args *)
  (* Decrement RSP for locals *)
  let prelude : ins list = 
    (Pushq, [Reg Rbp]) ::
    (Movq, [Reg Rsp; Reg Rbp]) ::
    List.map copy_arg_to_stack (List.init (List.length f_param) (fun n -> n))
    @ [(Subq, [Imm (Lit (Int64.mul 8L (count_uids f_cfg))); Reg Rsp])] in
  (* compute layout => mapping uids to x86.operands *)
  let layout = stack_layout f_param f_cfg in
  let ctxt : ctxt = {tdecls = tdecls; layout = layout} in
  let ll_entry = fst f_cfg in
  let ll_blks = snd f_cfg in
  let asm_blks = List.map (fun (lbl,blk) -> compile_lbl_block name lbl ctxt blk) ll_blks in
  let asm_entry_ins = compile_block name ctxt ll_entry in
  let asm_entry = Asm.gtext (Platform.mangle name) (prelude @ asm_entry_ins) in
  asm_entry :: asm_blks



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

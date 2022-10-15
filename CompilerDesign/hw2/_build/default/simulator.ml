(* X86lite Simulator *)

(* See the documentation in the X86lite specification, available on the 
   course web pages, for a detailed explanation of the instruction
   semantics.
*)

open X86
open Big_int

(* simulator machine state -------------------------------------------------- *)

let mem_bot = 0x400000L          (* lowest valid address *)
let mem_top = 0x410000L          (* one past the last byte in memory *)
let mem_size = Int64.to_int (Int64.sub mem_top mem_bot)
let nregs = 17                   (* including Rip *)
let ins_size = 8L                (* assume we have a 8-byte encoding *)
let exit_addr = 0xfdeadL         (* halt when m.regs(%rip) = exit_addr *)

(* Your simulator should raise this exception if it tries to read from or
   store to an address not within the valid address space. *)
exception X86lite_segfault
exception X86_segmentation_fault

(* The simulator memory maps addresses to symbolic bytes.  Symbolic
   bytes are either actual data indicated by the Byte constructor or
   'symbolic instructions' that take up eight bytes for the purposes of
   layout.

   The symbolic bytes abstract away from the details of how
   instructions are represented in memory.  Each instruction takes
   exactly eight consecutive bytes, where the first byte InsB0 stores
   the actual instruction, and the next seven bytes are InsFrag
   elements, which aren't valid data.

   For example, the two-instruction sequence:
        at&t syntax             ocaml syntax
      movq %rdi, (%rsp)       Movq,  [~%Rdi; Ind2 Rsp]
      decq %rdi               Decq,  [~%Rdi]

   is represented by the following elements of the mem array (starting
   at address 0x400000):

       0x400000 :  InsB0 (Movq,  [~%Rdi; Ind2 Rsp])
       0x400001 :  InsFrag
       0x400002 :  InsFrag
       0x400003 :  InsFrag
       0x400004 :  InsFrag
       0x400005 :  InsFrag
       0x400006 :  InsFrag
       0x400007 :  InsFrag
       0x400008 :  InsB0 (Decq,  [~%Rdi])
       0x40000A :  InsFrag
       0x40000B :  InsFrag
       0x40000C :  InsFrag
       0x40000D :  InsFrag
       0x40000E :  InsFrag
       0x40000F :  InsFrag
       0x400010 :  InsFrag
*)
type sbyte = InsB0 of ins       (* 1st byte of an instruction *)
           | InsFrag            (* 2nd - 8th bytes of an instruction *)
           | Byte of char       (* non-instruction byte *)

(* memory maps addresses to symbolic bytes *)
type mem = sbyte array

(* Flags for condition codes *)
type flags = { mutable fo : bool
             ; mutable fs : bool
             ; mutable fz : bool
             }

(* Register files *)
type regs = int64 array

(* Complete machine state *)
type mach = { flags : flags
            ; regs : regs
            ; mem : mem
            }

(* simulator helper functions ----------------------------------------------- *)

(* The index of a register in the regs array *)
let rind : reg -> int = function
  | Rip -> 16
  | Rax -> 0  | Rbx -> 1  | Rcx -> 2  | Rdx -> 3
  | Rsi -> 4  | Rdi -> 5  | Rbp -> 6  | Rsp -> 7
  | R08 -> 8  | R09 -> 9  | R10 -> 10 | R11 -> 11
  | R12 -> 12 | R13 -> 13 | R14 -> 14 | R15 -> 15

(* Helper functions for reading/writing sbytes *)

(* Convert an int64 to its sbyte representation *)
let sbytes_of_int64 (i:int64) : sbyte list =
  let open Char in 
  let open Int64 in
  List.map (fun n -> Byte (shift_right i n |> logand 0xffL |> to_int |> chr))
           [0; 8; 16; 24; 32; 40; 48; 56]

(* Convert an sbyte representation to an int64 *)
let int64_of_sbytes (bs:sbyte list) : int64 =
  let open Char in
  let open Int64 in
  let f b i = match b with
    | Byte c -> logor (shift_left i 8) (c |> code |> of_int)
    | _ -> 0L
  in
  List.fold_right f bs 0L

(* Convert a string to its sbyte representation *)
let sbytes_of_string (s:string) : sbyte list =
  let rec loop acc = function
    | i when i < 0 -> acc
    | i -> loop (Byte s.[i]::acc) (pred i)
  in
  loop [Byte '\x00'] @@ String.length s - 1

(* Serialize an instruction to sbytes *)
let sbytes_of_ins (op, args:ins) : sbyte list =
  let check = function
    | Imm (Lbl _) | Ind1 (Lbl _) | Ind3 (Lbl _, _) -> 
      invalid_arg "sbytes_of_ins: tried to serialize a label!"
    | o -> ()
  in
  List.iter check args;
  [InsB0 (op, args); InsFrag; InsFrag; InsFrag;
   InsFrag; InsFrag; InsFrag; InsFrag]

(* Serialize a data element to sbytes *)
let sbytes_of_data : data -> sbyte list = function
  | Quad (Lit i) -> sbytes_of_int64 i
  | Asciz s -> sbytes_of_string s
  | Quad (Lbl _) -> invalid_arg "sbytes_of_data: tried to serialize a label!"


(* It might be useful to toggle printing of intermediate states of your 
   simulator. Our implementation uses this mutable flag to turn on/off
   printing.  For instance, you might write something like:

     [if !debug_simulator then print_endline @@ string_of_ins u; ...]

*)
let debug_simulator = ref false

(* Interpret a condition code with respect to the given flags. *)
let interp_cnd {fo; fs; fz} : cnd -> bool = 
  let interp_cnd_aux cond =
    begin match cond with
    | Eq -> fz
    | Neq -> not fz
    | Lt -> fs <> fo
    | Le -> (fs <> fo) || fz
    | Gt -> not ((fs <> fo) || fz)
    | Ge -> not (fs <> fo)
  end in
  interp_cnd_aux


  (* FUCK OFF*)
  type t = { value : int64; overflow : bool }

  let ok i = { value = i; overflow = false }
  
  exception Overflow
  
  let with_overflow1 g f i =
    let res = f i in 
    { value = res
    ; overflow = not @@ eq_big_int (big_int_of_int64 res) (g @@ big_int_of_int64 i)
    } 
    
  let with_overflow2 g f i j =
    let res = f i j in
    { value = res
    ; overflow = not @@ eq_big_int (big_int_of_int64 res) 
                       (g (big_int_of_int64 i) (big_int_of_int64 j))
    } 
  
  let neg = with_overflow1 minus_big_int Int64.neg
  let succ = with_overflow1 succ_big_int Int64.succ
  let pred = with_overflow1 pred_big_int Int64.pred
  
  let add = with_overflow2 add_big_int Int64.add
  let sub = with_overflow2 sub_big_int Int64.sub
  let mul = with_overflow2 mult_big_int Int64.mul


(* Maps an X86lite address into Some OCaml array index,
   or None if the address is not within the legal address space. *)
let map_addr (addr:quad) : int option =
  if addr > mem_top || addr < mem_bot then
    None
  else
    Some (Int64.to_int (Int64.sub addr mem_bot))

(* Simulates one step of the machine:
    - fetch the instruction at %rip
    - compute the source and/or destination information from the operands
    - simulate the instruction semantics
    - update the registers and/or memory appropriately
    - set the condition flags
*)
let step (m:mach) : unit =
  let get_instr =
    m.mem.(Int64.to_int m.regs.(rind Rip))
  in
  (* get quadword from address int -> int64 *)
  let get_quad_from_addr (address:int) : int64 =
    int64_of_sbytes [m.mem.(address); m.mem.(address+1); m.mem.(address+2); m.mem.(address+3); m.mem.(address+4);m.mem.(address+5); m.mem.(address+6); m.mem.(address+7)]
  in

  let int_op_to_int (x:int option) = 
    begin match x with
    | Some a -> a
    | _ -> raise X86_segmentation_fault
  end in
  
  let quad_of_imm i =
    begin match i with
    | Lit a -> a
    | Lbl _ -> failwith "Got Lbl, excpected Lit"
  end in

  let store_data_mem (v , address) =
    Array.blit (Array.of_list (sbytes_of_int64 v)) 0 m.mem address 8
  in

  let store_data_reg (v, r) = 
    Array.set m.regs (rind r) v
  in

  let store_data (v, op) =
    begin match op with
    | Imm _ -> failwith "Operand Imm illegal"
    | Reg r -> store_data_reg (v,r)
    | Ind1 i -> store_data_mem (v,(int_op_to_int (map_addr (quad_of_imm i))))
    | Ind2 r -> store_data_mem (v, (int_op_to_int (map_addr (m.regs.(rind r)))))
    | Ind3 (i,r) -> store_data_mem (v, (int_op_to_int (map_addr (Int64.add (m.regs.(rind r)) (quad_of_imm i)))))
  end in
  
  let op_res_m op = 
    begin match op with
    | Imm a -> 
      begin match a with
      | Lit b -> b
      | Lbl _ -> failwith "excpected Lit, got Lbl"
    end
    | Reg a -> m.regs.(rind a)
    | Ind1 a -> 
      begin match a with
      | Lit b -> get_quad_from_addr (int_op_to_int (map_addr b))
      | Lbl _ -> failwith "excpected Lit, got Lbl"
    end
    | Ind2 r -> get_quad_from_addr (rind r)
    | Ind3 (i,r) -> 
      begin match i with
      (* maybe move map_addr out of plus *)
      | Lit b -> get_quad_from_addr ((rind r) + (int_op_to_int (map_addr b)))
      | Lbl _ -> failwith "excpected Lit, got Lbl"
    end
  end in
    
  let setFlags (sol:t) : unit =
    m.flags.fo <- sol.overflow;
    if sol.value < 0L then
      m.flags.fs <- true
    else
      m.flags.fs <- false;
    if sol.value = 0L then
      m.flags.fz <- true
    else
      m.flags.fz <- false
    in

  (* set flags *)
  let operand_exec sbyte = 
    begin match sbyte with
    | InsFrag -> failwith "excpected InsB0, got InsFrag"
    | Byte _ -> failwith "excpected InsB0, got Byte"
    | InsB0 ins -> match ins with
      | (Negq, [op1]) ->
        let sol = neg (op_res_m op1) in
        store_data (sol.value, op1);
        setFlags sol
      | (Addq, [op1;op2]) ->
        let sol = add (op_res_m op1) (op_res_m op2) in
        store_data (sol.value, op2);
        setFlags sol
      | (Subq, [op1;op2]) ->
        let sol = sub (op_res_m op2) (op_res_m op1) in
        store_data (sol.value, op2);
        setFlags sol
      | (Imulq, [op1;op2]) ->
        let sol = mul (op_res_m op1) (op_res_m op2) in
        store_data (sol.value, op2);
        setFlags sol
      | (Incq, [op]) ->
        let sol = succ (op_res_m op) in
        store_data (sol.value, op);
        setFlags sol
      | (Decq, [op]) ->
        let sol = pred (op_res_m op) in
        store_data (sol.value, op);
        setFlags sol
      | (Notq, [op]) ->
        let sol = Int64.lognot (op_res_m op) in
        store_data (sol, op);
      | (Andq, [op1;op2]) ->
        let sol = Int64.logand (op_res_m op1) (op_res_m op2) in
        store_data (sol, op2);
        setFlags (ok sol)
      | (Orq, [op1;op2]) ->
        let sol = Int64.logor (op_res_m op1) (op_res_m op2) in
        store_data (sol, op2);
        setFlags (ok sol)
      | (Xorq, [op1;op2]) ->
        let sol = Int64.logxor (op_res_m op1) (op_res_m op2) in
        store_data (sol, op2);
        setFlags (ok sol)
      | (Sarq, [amt;dest]) ->
        let sol = Int64.shift_right (op_res_m dest) (Int64.to_int (op_res_m amt)) in
        store_data (sol, dest);
        setFlags (ok sol)
      | (Shlq, [amt;dest]) ->
        let sol = mul (op_res_m dest) (Int64.shift_left 1L (Int64.to_int (op_res_m amt))) in
        store_data (sol.value, dest);
        setFlags sol
      | (Shrq, [amt;dest]) ->
        let sol = Int64.shift_right_logical (op_res_m dest) (Int64.to_int (op_res_m amt)) in
        store_data (sol, dest);
        setFlags (ok sol)
      | (Set c, [op1]) ->
        if interp_cnd m.flags c then
          store_data (1L, op1)
        else
          store_data (0L, op1)
      | (Leaq, [ind;dest]) ->
        begin match ind with
        | Ind1 i -> store_data ((quad_of_imm i), dest)
        | Ind2 r -> store_data (m.regs.(rind r), dest)
        | Ind3 (i,r) -> store_data (Int64.add (m.regs.(rind r)) (quad_of_imm i), dest)
        | _ -> failwith "invalid addressing"
      end
      | (Movq, [op1;op2]) ->
        store_data ((op_res_m op1), op2) 
      | (Pushq, [op]) ->
        m.regs.(rind Rsp) <- (Int64.sub m.regs.(rind Rsp) 8L);
        store_data ((op_res_m op), Ind2 Rsp)
      | (Popq, [op]) ->
        store_data ((op_res_m (Ind2 Rsp)), op);
        m.regs.(rind Rsp) <- (Int64.add m.regs.(rind Rsp) 8L)
      | (Cmpq, [op1;op2]) ->
        let sol = sub (op_res_m op2) (op_res_m op1) in
        setFlags sol
      | (Jmp, [op]) ->
        m.regs.(rind Rip) <- (op_res_m op)
      | (Callq, [op]) ->
        m.regs.(rind Rsp) <- (Int64.sub m.regs.(rind Rsp) 8L);
        store_data ((op_res_m (Ind2 Rip)), Ind2 Rsp);
        m.regs.(rind Rip) <- (op_res_m op)
      | (Retq, []) ->
        store_data ((op_res_m (Ind2 Rsp)), (Ind2 Rip));
        m.regs.(rind Rsp) <- (Int64.add m.regs.(rind Rsp) 8L)
      | (J c, [op]) ->
        if interp_cnd m.flags c then
          m.regs.(rind Rip) <- (op_res_m op)
        else
          ()
      | _ -> failwith "Invalid Instr"
  end in
  operand_exec (get_instr)

(* Runs the machine until the rip register reaches a designated
   memory address. Returns the contents of %rax when the 
   machine halts. *)
let run (m:mach) : int64 = 
  while m.regs.(rind Rip) <> exit_addr do step m done;
  m.regs.(rind Rax)

(* assembling and linking --------------------------------------------------- *)

(* A representation of the executable *)
type exec = { entry    : quad              (* address of the entry point *)
            ; text_pos : quad              (* starting address of the code *)
            ; data_pos : quad              (* starting address of the data *)
            ; text_seg : sbyte list        (* contents of the text segment *)
            ; data_seg : sbyte list        (* contents of the data segment *)
            }

(* Assemble should raise this when a label is used but not defined *)
exception Undefined_sym of lbl

(* Assemble should raise this when a label is defined more than once *)
exception Redefined_sym of lbl

(* TASK 2 
  Convert an X86 program into an object file:
   - separate the text and data segments
   - compute the size of each segment
      Note: the size of an Asciz string section is (1 + the string length)
            due to the null terminator

   - resolve the labels to concrete addresses and 'patch' the instructions to 
     replace Lbl values with the corresponding Imm values.

   - the text segment starts at the lowest address
   - the data segment starts after the text segment

  HINT: List.fold_left and List.fold_right are your friends.
 *)
let assemble (p:prog) : exec =
failwith "assemble unimplemented"

(* TASK 2 
  Convert an object file into an executable machine state. 
    - allocate the mem array
    - set up the memory state by writing the symbolic bytes to the 
      appropriate locations 
    - create the inital register state
      - initialize rip to the entry point address
      - initializes rsp to the last word in memory 
      - the other registers are initialized to 0
    - the condition code flags start as 'false'

  Hint: The Array.make, Array.blit, and Array.of_list library functions 
  may be of use.
*)
let load {entry; text_pos; data_pos; text_seg; data_seg} : mach = 
failwith "load unimplemented"

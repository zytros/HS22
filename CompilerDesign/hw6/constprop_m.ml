open Ll
open Datastructures

(* The lattice of symbolic constants ---------------------------------------- *)
module SymConst =
  struct
    type t = NonConst           (* Uid may take on multiple values at runtime *)
           | Const of int64     (* Uid will always evaluate to const i64 or i1 *)
           | UndefConst         (* Uid is not defined at the point *)

    let compare s t =
      match (s, t) with
      | (Const i, Const j) -> Int64.compare i j
      | (NonConst, NonConst) | (UndefConst, UndefConst) -> 0
      | (NonConst, _) | (_, UndefConst) -> 1
      | (UndefConst, _) | (_, NonConst) -> -1

    let to_string : t -> string = function
      | NonConst -> "NonConst"
      | Const i -> Printf.sprintf "Const (%LdL)" i
      | UndefConst -> "UndefConst"

    
  end

(* The analysis computes, at each program point, which UIDs in scope will evaluate 
   to integer constants *)
type fact = SymConst.t UidM.t



(* flow function across Ll instructions ------------------------------------- *)
(* - Uid of a binop or icmp with const arguments is constant-out
   - Uid of a binop or icmp with an UndefConst argument is UndefConst-out
   - Uid of a binop or icmp with an NonConst argument is NonConst-out
   - Uid of stores and void calls are UndefConst-out
   - Uid of all other instructions are NonConst-out
 *)
let insn_flow (u,i:uid * insn) (d:fact) : fact =
  let open SymConst in
  let expected_binop binop = match binop with
    | Add -> Int64.add
    | Sub -> Int64.sub
    | Mul -> Int64.mul
    | Shl -> (fun x y -> Int64.shift_left x (Int64.to_int y))
    | Lshr -> (fun x y -> Int64.shift_right_logical x (Int64.to_int y))
    | Ashr -> (fun x y -> Int64.shift_right x (Int64.to_int y))
    | And -> Int64.logand
    | Or -> Int64.logor
    | Xor -> Int64.logxor
  in
  let expected_icmp cnd i1 i2 =
    let b = match cnd with
      | Eq -> Int64.equal i1 i2
      | Ne -> not @@ Int64.equal i1 i2
      | Slt -> (Int64.compare i1 i2) < 0
      | Sle -> (Int64.compare i1 i2) <= 0
      | Sgt -> (Int64.compare i1 i2) > 0
      | Sge -> (Int64.compare i1 i2) >= 0
    in
    if b then 1L else 0L
  in
  let aux f = function
    | (UndefConst, _) | (_, UndefConst) -> UndefConst
    | (NonConst, _) | (_, NonConst) -> NonConst
    | (Const i1, Const i2) -> Const (f i1 i2)
  in
  let lookup x = match UidM.find_opt x d with
    | Some y -> y
    | None -> NonConst
  in
  let out = match i with
    | Binop (binop, ty, Const i1, Const i2) ->
      aux (expected_binop binop) (SymConst.Const i1, SymConst.Const i2)
    | Binop (binop, ty, Const i1, Id b) ->
      aux (expected_binop binop) (SymConst.Const i1, lookup b)
    | Binop (binop, ty, Id a, Const i2) ->
      aux (expected_binop binop) (lookup a, SymConst.Const i2)
    | Binop (binop, ty, Id a, Id b) ->
      aux (expected_binop binop) (lookup a, lookup b)
    | Icmp (cnd, ty, Const i1, Const i2) ->
      aux (expected_icmp cnd) (SymConst.Const i1, SymConst.Const i2)
    | Icmp (cnd, ty, Const i1, Id b) ->
      aux (expected_icmp cnd) (SymConst.Const i1, lookup b)
    | Icmp (cnd, ty, Id a, Const i2) ->
      aux (expected_icmp cnd) (lookup a, SymConst.Const i2)
    | Icmp (cnd, ty, Id a, Id b) ->
      aux (expected_icmp cnd) (lookup a, lookup b)
    | Store _ | Call (Void, _, _) -> UndefConst
    | _ -> NonConst
  in
  UidM.add u out d

(* The flow function across terminators is trivial: they never change const info *)
let terminator_flow (t:terminator) (d:fact) : fact = d

(* module for instantiating the generic framework --------------------------- *)
module Fact =
  struct
    type t = fact
    let forwards = true

    let insn_flow = insn_flow
    let terminator_flow = terminator_flow
    
    let normalize : fact -> fact = 
      UidM.filter (fun _ v -> v != SymConst.UndefConst)

    let compare (d:fact) (e:fact) : int  = 
      UidM.compare SymConst.compare (normalize d) (normalize e)

    let to_string : fact -> string =
      UidM.to_string (fun _ v -> SymConst.to_string v)

    (* The constprop analysis should take the meet over predecessors to compute the
       flow into a node. You may find the UidM.merge function useful *)
    let combine (ds:fact list) : fact =
      let join uid (a:SymConst.t option) (b:SymConst.t option) : SymConst.t option =
        let open SymConst in
        begin match (a, b) with
          | (_, Some UndefConst) | (Some UndefConst, _) -> Some UndefConst
          | (_, Some NonConst) | (Some NonConst, _) -> Some NonConst
          | (Some Const x, Some Const y) -> if x = y then Some (Const x) else Some NonConst
          | (None, Some Const x) | (Some Const x, None) -> Some (Const x)
          | (None, None) -> None
        end
      in 
      List.fold_right (UidM.merge join) ds UidM.empty
  end

(* instantiate the general framework ---------------------------------------- *)
module Graph = Cfg.AsGraph (Fact)
module Solver = Solver.Make (Fact) (Graph)

(* expose a top-level analysis operation ------------------------------------ *)
let analyze (g:Cfg.t) : Graph.t =
  (* the analysis starts with every node set to bottom (the map of every uid 
     in the function to UndefConst *)
  let init l = UidM.empty in

  (* the flow into the entry node should indicate that any parameter to the
     function is not a constant *)
  let cp_in = List.fold_right 
    (fun (u,_) -> UidM.add u SymConst.NonConst)
    g.Cfg.args UidM.empty 
  in
  let fg = Graph.of_cfg init cp_in g in
  Solver.solve fg


(* run constant propagation on a cfg given analysis results ----------------- *)
(* HINT: your cp_block implementation will probably rely on several helper 
   functions.                                                                 *)
let run (cg:Graph.t) (cfg:Cfg.t) : Cfg.t =
  let open SymConst in
  
  let cp_operand (cb:Fact.t) (op:Ll.operand) (ty:Ll.ty) : Ll.operand = match ty with
    | I64 | I1 -> begin match op with
      | Id uid -> begin match UidM.find_opt uid cb with
        | Some SymConst.Const x -> Ll.Const x
        | _ -> op
      end
      | _ -> op
    end
    | _ -> op
  in

  let cp_insn (cb:Ll.uid -> Fact.t) (u,i) : (uid * insn) = 
    let constness = cb u in
    let cp_op = cp_operand constness in
    let i2 : insn = match i with
      | Binop (binop, ty, op1, op2) -> Binop (binop, ty, cp_op op1 ty, cp_op op2 ty)
      | Alloca ty -> i
      | Load (ty, op) -> i
      | Store (ty, a, b) -> Store (ty, cp_op a ty, b)
      | Icmp (cnd, ty, op1, op2) -> Icmp (cnd, ty, cp_op op1 ty, cp_op op2 ty)
      | Call (rt, f, args) -> Call (rt, f, List.map (fun (x,y) -> x, cp_op y x) args)
      | Bitcast (ty1, op, ty2) -> Bitcast (ty1, cp_op op ty1, ty2)
      | Gep (ty, op, ops) -> Gep (ty, op, List.map (fun x -> cp_op x I64) ops)
    in 
    (u, i2)
  in

  let cp_term (cb:Ll.uid -> Fact.t) (u,t) : (uid * terminator) =
    let constness = cb u in
    let cp_op = cp_operand constness in
    let t2 : terminator = match t with
      | Ret (ty, Some op) -> Ret (ty, Some (cp_op op ty))
      | Ret (ty, None) -> t
      | Br (l) -> t
      | Cbr (op, l1, l2) -> Cbr (cp_op op I1, l1, l2)
    in 
    (u, t2)
  in

  let cp_block (l:Ll.lbl) (cfg:Cfg.t) : Cfg.t =
    let {insns=insns; term=term} = Cfg.block cfg l in
    let cb = Graph.uid_out cg l in
    let newBlock = {insns=List.map (cp_insn cb) insns; term=cp_term cb term} in
    { blocks = LblM.add l newBlock cfg.blocks
    ; preds  = cfg.preds
    ; ret_ty = cfg.ret_ty
    ; args   = cfg.args
    } 
  in

  LblS.fold cp_block (Cfg.nodes cfg) cfg

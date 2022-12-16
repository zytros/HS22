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

  let lookup x = 
    match UidM.find_opt x d with
    | Some a -> a
    | None -> NonConst
  in

  let binop op = 
    begin match op with
    | And -> Int64.logand
    | Or -> Int64.logor
    | Xor -> Int64.logxor
    | Add -> Int64.add
    | Sub -> Int64.sub
    | Mul -> Int64.mul
    | Shl -> (fun a b -> Int64.shift_left a (Int64.to_int b))
    | Lshr -> (fun a b -> Int64.shift_right_logical a (Int64.to_int b))
    | Ashr -> (fun a b -> Int64.shift_right a (Int64.to_int b))    
  end in
  
  let icomp cond a b =
    let isGood = 
      begin match cond with
      | Eq -> Int64.equal a b
      | Ne -> not (Int64.equal a b)
      | Slt -> (Int64.compare a b) < 0
      | Sle -> (Int64.compare a b) <= 0
      | Sgt -> (Int64.compare a b) > 0
      | Sge -> (Int64.compare a b) >= 0
    end in
    if isGood then 1L else 0L
  in

  let helper func = 
    function
      | (UndefConst, _) | (_, UndefConst) -> UndefConst
      | (NonConst, _) | (_, NonConst) -> NonConst
      | (Const a, Const b) -> Const (func a b)
  in
  

  let out = 
    begin match i with
    | Binop (op, ty, Const a, Const b) ->
      helper (binop op) (SymConst.Const a, SymConst.Const b)
    | Binop (op, ty, Const a, Id b) ->
      helper (binop op) (SymConst.Const a, lookup b)
    | Binop (op, ty, Id a, Const b) ->
      helper (binop op) (lookup a, SymConst.Const b)
    | Binop (op, ty, Id a, Id b) ->
      helper (binop op) (lookup a, lookup b)
    | Icmp (cnd, ty, Const a, Const b) ->
      helper (icomp cnd) (SymConst.Const a, SymConst.Const b)
    | Icmp (cnd, ty, Const a, Id b) ->
      helper (icomp cnd) (SymConst.Const a, lookup b)
    | Icmp (cnd, ty, Id a, Const b) ->
      helper (icomp cnd) (lookup a, SymConst.Const b)
    | Icmp (cnd, ty, Id a, Id b) ->
      helper (icomp cnd) (lookup a, lookup b)
    | Store _ | Call (Void, _, _) -> UndefConst
    | _ -> NonConst
    end in
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
      let aux uid a b=
        (*loc open*)
        let open SymConst in

        begin match (a, b) with
          | (None, Some Const c) | (Some Const c, None) -> Some (Const c)
          | (None, None) -> None
          | (_, Some UndefConst) | (Some UndefConst, _) -> Some UndefConst
          | (_, Some NonConst) | (Some NonConst, _) -> Some NonConst
          | (Some Const c, Some Const d) -> if c = d then Some (Const c) else Some NonConst
        end in 
      List.fold_right (UidM.merge aux) ds UidM.empty
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

  let cp_block (l:Ll.lbl) (cfg:Cfg.t) : Cfg.t =

    let operands cb op t = 
      begin match t with
      | I64 | I1 -> 
        begin match op with
        | Id id -> 
          begin match UidM.find_opt id cb with
          | Some SymConst.Const x -> Ll.Const x
          | _ -> op
        end
        | _ -> op
      end
      | _ -> op
    end in
  
    let ins cb (u,i) = 
      let isC = cb u in
      let constOP = operands isC in
      let ins2 = 
        begin match i with
        | Binop (op, t, a, b) -> Binop (op, t, constOP a t, constOP b t)
        | Alloca _ -> i
        | Icmp (cond, t, a, b) -> Icmp (cond, t, constOP a t, constOP b t)
        | Call (retT, func, args) -> Call (retT, func, List.map (fun (a,b) -> a, constOP b a) args)
        | Bitcast (t1, op, t2) -> Bitcast (t1, constOP op t1, t2)
        | Gep (t, op, ops) -> Gep (t, op, List.map (fun a -> constOP a I64) ops)
        | Load _ -> i
        | Store (t, a, b) -> Store (t, constOP a t, b)        
      end in 
      (u, ins2)
    in
  
    let stms cb (u,t) =
      let isC = cb u in
      let constOP = operands isC in
      let t2 = 
        begin match t with
        | Ret (ty, Some op) -> Ret (ty, Some (constOP op ty))
        | Ret (ty, None) -> t
        | Br (l) -> t
        | Cbr (op, a, b) -> Cbr (constOP op I1, a, b)
      end in 
      (u, t2)
    in

    let {insns=insns; term=term} = Cfg.block cfg l in
    let cb = Graph.uid_out cg l in
    let newBlock = {insns=List.map (ins cb) insns; term=stms cb term} in
    {blocks = LblM.add l newBlock cfg.blocks; preds  = cfg.preds; ret_ty = cfg.ret_ty; args = cfg.args} 


(*
  let cp_block (l:Ll.lbl) (cfg:Cfg.t) : Cfg.t =
    let b = Cfg.block cfg l in
    let cb = Graph.uid_out cg l in
    failwith "Constprop.cp_block unimplemented"*)
  in

  LblS.fold cp_block (Cfg.nodes cfg) cfg

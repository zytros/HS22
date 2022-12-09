(** Alias Analysis *)

open Ll
open Datastructures

(* The lattice of abstract pointers ----------------------------------------- *)
module SymPtr =
  struct
    type t = MayAlias           (* uid names a pointer that may be aliased *)
           | Unique             (* uid is the unique name for a pointer *)
           | UndefAlias         (* uid is not in scope or not a pointer *)

    let compare : t -> t -> int = Pervasives.compare

    let to_string = function
      | MayAlias -> "MayAlias"
      | Unique -> "Unique"
      | UndefAlias -> "UndefAlias"

  end

(* The analysis computes, at each program point, which UIDs in scope are a unique name
   for a stack slot and which may have aliases *)
type fact = SymPtr.t UidM.t

(* flow function across Ll instructions ------------------------------------- *)
(* TASK: complete the flow function for alias analysis. 

   - After an alloca, the defined UID is the unique name for a stack slot
   - A pointer returned by a load, call, bitcast, or GEP may be aliased
   - A pointer passed as an argument to a call, bitcast, GEP, or store
     may be aliased
   - Other instructions do not define pointers

 *)
let insn_flow ((u,i):uid * insn) (d:fact) : fact =
  let dref = ref d in
  let make_unique uid ty =
    match ty with
    | Ptr _ -> dref := UidM.add uid SymPtr.Unique !dref
    | _ -> ()
  in
  let make_mayalias uid ty =
    match ty with
    | Ptr _ -> dref := UidM.add uid SymPtr.MayAlias !dref
    | _ -> ()
  in
  let make_mayalias_op op ty = begin match op with
    | Null | Const _ | Gid _ -> ()
    | Id uid -> begin match ty with
      | Ptr _ -> dref := UidM.add uid SymPtr.MayAlias !dref
      | _ -> ()
    end
  end
  in
  begin match i with
    | Alloca ty ->
      make_unique u (Ptr ty)
    | Load (ty, op) -> begin match ty with
      | Ptr t -> make_mayalias u t
      | _ -> failwith "wtf, type of load argument is not ptr"
      end
    | Call (rt, f, args) ->
      make_mayalias u rt;
      ignore @@ List.map (fun (t,o) -> make_mayalias_op o t) args
    | Bitcast (ty1, op, ty2) ->
      make_mayalias u ty2;
      make_mayalias_op op ty1
    | Gep (ty, op, ops) ->
      make_mayalias u (Ptr Void);
      make_mayalias_op op ty
    | Store (ty, a, b) ->
      make_mayalias_op a ty
    | _ -> ()  (* Binop, Icmp do not define pointers *)
  end;
  !dref

(* The flow function across terminators is trivial: they never change alias info *)
let terminator_flow t (d:fact) : fact = d

(* module for instantiating the generic framework --------------------------- *)
module Fact =
  struct
    type t = fact
    let forwards = true

    let insn_flow = insn_flow
    let terminator_flow = terminator_flow
    
    (* UndefAlias is logically the same as not having a mapping in the fact. To
       compare dataflow facts, we first remove all of these *)
    let normalize : fact -> fact = 
      UidM.filter (fun _ v -> v != SymPtr.UndefAlias)

    let compare (d:fact) (e:fact) : int = 
      UidM.compare SymPtr.compare (normalize d) (normalize e)

    let to_string : fact -> string =
      UidM.to_string (fun _ v -> SymPtr.to_string v)

    (* TASK: complete the "combine" operation for alias analysis.

       The alias analysis should take the join over predecessors to compute the
       flow into a node. You may find the UidM.merge function useful.

       It may be useful to define a helper function that knows how to take the
       join of two SymPtr.t facts.
    *)
    let combine (ds:fact list) : fact =
      let join uid (a:SymPtr.t option) (b:SymPtr.t option) : SymPtr.t option = 
        begin match a with 
          | Some Unique -> begin match b with 
            | Some MayAlias -> Some MayAlias
            | Some Unique
            | Some UndefAlias | None -> Some Unique
          end
          | Some MayAlias -> Some MayAlias
          | Some UndefAlias | None -> begin match b with 
            | Some Unique -> Some Unique
            | Some MayAlias -> Some MayAlias
            | Some UndefAlias | None -> Some UndefAlias
          end
        end
      in
      List.fold_right (UidM.merge join) ds UidM.empty
  end

  (*  TODO is this correct??? TASK TASK TASK
  a / b     uniqe    may   undef
  unique    unique
  may       may     may   
  undef     unique  may     undef *)

(* instantiate the general framework ---------------------------------------- *)
module Graph = Cfg.AsGraph (Fact)
module Solver = Solver.Make (Fact) (Graph)

(* expose a top-level analysis operation ------------------------------------ *)
let analyze (g:Cfg.t) : Graph.t =
  (* the analysis starts with every node set to bottom (the map of every uid 
     in the function to UndefAlias *)
  let init l = UidM.empty in

  (* the flow into the entry node should indicate that any pointer parameter 
     to the function may be aliased *)
  let alias_in = 
    List.fold_right 
      (fun (u,t) -> match t with
                    | Ptr _ -> UidM.add u SymPtr.MayAlias
                    | _ -> fun m -> m) 
      g.Cfg.args UidM.empty 
  in
  let fg = Graph.of_cfg init alias_in g in
  Solver.solve fg


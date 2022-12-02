open Ast
open Astlib
open Tctxt

(* Error Reporting ---------------------------------------------------------- *)
(* NOTE: Use type_error to report error messages for ill-typed programs. *)

exception TypeError of string

let type_error (l : 'a node) err = 
  let (_, (s, e), _) = l.loc in
  raise (TypeError (Printf.sprintf "[%d, %d] %s" s e err))


(* initial context: G0 ------------------------------------------------------ *)
(* The Oat types of the Oat built-in functions *)
let builtins =
  [ "array_of_string",  ([TRef RString],  RetVal (TRef(RArray TInt)))
  ; "string_of_array",  ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", ([TRef RString],  RetVal TInt)
  ; "string_of_int",    ([TInt], RetVal (TRef RString))
  ; "string_cat",       ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     ([TRef RString],  RetVoid)
  ; "print_int",        ([TInt], RetVoid)
  ; "print_bool",       ([TBool], RetVoid)
  ]

(* binary operation types --------------------------------------------------- *)
let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)
  | Eq | Neq -> failwith "typ_of_binop called on polymorphic == or !="

(* unary operation types ---------------------------------------------------- *)
let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)

(* subtyping ---------------------------------------------------------------- *)
(* Decides whether H |- t1 <: t2 
    - assumes that H contains the declarations of all the possible struct types

    - you will want to introduce addition (possibly mutually recursive) 
      helper functions to implement the different judgments of the subtyping
      relation. We have included a template for subtype_ref to get you started.
      (Don't forget about OCaml's 'and' keyword.)
*)
let rec subtype (c : Tctxt.t) (t1 : Ast.ty) (t2 : Ast.ty) : bool =
  begin match t1 with
  | TBool ->
    begin match t2 with
    | TBool -> true
    | TInt | TNullRef _ | TRef _ -> false
  end
  | TInt -> 
    begin match t2 with
    | TInt -> true
    | TBool | TNullRef _ | TRef _ -> false
  end
  | TNullRef p ->
    begin match t2 with
    | TNullRef p' -> subtype_ref c p p'
    | TBool | TInt | TRef _ -> false
  end
  | TRef p -> 
    begin match t2 with
    | TNullRef p' -> subtype_ref c p p'
    | TRef p' -> subtype_ref c p p'
    | TBool | TInt -> false
  end
end

(* Decides whether H |-r ref1 <: ref2 *)
and subtype_ref (c : Tctxt.t) (t1 : Ast.rty) (t2 : Ast.rty) : bool =
  let subtypeRet a x y = 
  begin match x with
  | RetVoid -> 
    begin match y with
    | RetVoid -> true
    | _ -> false
  end
  | RetVal v1 ->
    begin match y with
    | RetVal v2 -> subtype a v1 v2
    |RetVoid -> false
  end
  end in

  begin match t1 with
  | RString ->
    begin match t2 with
    | RString -> true
    | _ -> false
  end
  | RStruct a ->
    begin match t2 with
    | RStruct b -> 
      begin match lookup_struct_option a c with
      | Some locAs ->
        begin match lookup_struct_option b c with
        | Some locBs ->
          let locAty = List.map (fun {fieldName=n;ftyp=fty} -> (n,fty)) locAs in
          let isSubTy = List.map(fun {fieldName=n;ftyp=fty} ->
            let tyA = try Some (List.assoc n locAty) with Not_found -> None in
            match tyA with
            | Some t -> fty=t
            | _ -> false ) locBs in
          List.fold_left (&&) true isSubTy
        | None -> type_error (no_loc (Id b)) "struct"
        end
      | None -> type_error (no_loc (Id a)) "struct"
      end
    | _ -> false
    end
  | RArray a ->
    begin match t2 with
    | RArray b -> a=b
    | _ -> false
  end
  | RFun (argTysA, a) ->
    begin match t2 with
    | RFun (argTysB, b) ->
      if (List.length argTysA) = (List.length argTysB) then begin
        let isSubTy = List.map (fun (x,y) -> subtype c y x) (List.combine argTysA argTysB) in
        if (List.fold_left (&&) true isSubTy) && subtypeRet c a b then true else false
      end
    else false
    | _ -> false
  end end
        



(* well-formed types -------------------------------------------------------- *)
(* Implement a (set of) functions that check that types are well formed according
   to the H |- t and related inference rules

    - the function should succeed by returning () if the type is well-formed
      according to the rules

    - the function should fail using the "type_error" helper function if the 
      type is not well-formed

    - l is just an ast node that provides source location information for
      generating error messages (it's only needed for the type_error generation)

    - tc contains the structure definition context
 *)
let rec typecheck_ty (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ty) : unit =
  begin match t with
  | TBool | TInt -> ()
  | TNullRef retTy -> typecheck_ty l tc (TRef retTy)
  | TRef retTy ->
    begin match retTy with
    | RArray aTy -> typecheck_ty l tc aTy
    | RString -> ()
    | RStruct str ->
      begin try ignore(lookup_struct str tc) with Not_found -> type_error l "no struct found" end
    | RFun (argTys, retTy) ->
      ignore (List.map (typecheck_ty l tc) argTys);
      begin match retTy with
        | RetVoid -> ()
        | RetVal t' -> typecheck_ty l tc t'
      end
  end
end

(* typechecking expressions ------------------------------------------------- *)
(* Typechecks an expression in the typing context c, returns the type of the
   expression.  This function should implement the inference rules given in the
   oad.pdf specification.  There, they are written:

       H; G; L |- exp : t

   See tctxt.ml for the implementation of the context c, which represents the
   four typing contexts: H - for structure definitions G - for global
   identifiers L - for local identifiers

   Returns the (most precise) type for the expression, if it is type correct
   according to the inference rules.

   Uses the type_error function to indicate a (useful!) error message if the
   expression is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   Notes: - Structure values permit the programmer to write the fields in any
   order (compared with the structure definition).  This means that, given the
   declaration struct T { a:int; b:int; c:int } The expression new T {b=3; c=4;
   a=1} is well typed.  (You should sort the fields to compare them.)

*)
let rec typecheck_exp (c : Tctxt.t) (e : Ast.exp node) : Ast.ty =
  begin match e.elt with
  | CStr a -> TRef RString
  | CBool a -> TBool
  | CInt a -> TInt
  | CNull retTy -> typecheck_ty e c (TRef retTy); TNullRef retTy
  | Id id -> 
    begin match lookup_local_option id c with
    | Some a -> a
    | None -> begin try lookup_global id c with 
      Not_found -> type_error e "ident not found" end
  end
  | CArr (ty, es) -> 
    typecheck_ty e c ty;
    let is_subty = List.map (fun e -> subtype c (typecheck_exp c e) ty) es in
    if List.fold_left (&&) true is_subty
      then TRef (RArray ty)
      else type_error e "arr elem not arr ty"
  | NewArr (ty, size, id, lEXP) ->
    typecheck_ty e c ty;
    if typecheck_exp c size = TInt then () else type_error size "invalid size";
    begin try ignore (lookup_local id c); type_error e "öhm" with Not_found -> () end;
    let c2 = add_local c id TInt in
    if subtype c (typecheck_exp c2 lEXP) ty
      then TRef (RArray ty)
      else type_error lEXP "arr elem not arr ty"
  | Index (arr, ind) ->
    let t = match typecheck_exp c arr with
      | TRef (RArray x) -> x
      | _ -> type_error arr "wrong ty"
    in
    if typecheck_exp c ind = TInt
      then t
      else type_error ind "invalid idx"
  | Length arr ->
    begin match typecheck_exp c arr with
      | TRef (RArray x) -> ()
      | _ -> type_error arr "excpected array"
    end;
    TInt
  | CStruct (ty, locExps) ->
    let fields_list = try lookup_struct ty c with Not_found -> type_error e "" in
    let fields_ty = List.map (fun {fieldName=fn; ftyp=ft} -> (fn,ft)) fields_list in
    let fields_exp_sorted = List.sort (fun (ident1,_) (ident2,_) -> String.compare ident1 ident2) locExps in
    let fields_ty_sorted = List.sort (fun (ident1,_) (ident2,_) -> String.compare ident1 ident2) fields_ty in
    if List.length fields_ty_sorted = List.length fields_exp_sorted then ()
      else type_error e "struct def bad";
    let is_subty = List.map (
        fun ((ident1, ty),(ident2, exp)) ->
          if ident1 = ident2
            then subtype c (typecheck_exp c exp) ty
            else type_error e "local fields bad"
      ) (List.combine fields_ty_sorted fields_exp_sorted) in
    if List.fold_left (&&) true is_subty then TRef (RStruct ty)
      else type_error e "local fields bad"
  | Proj (structt, locID) ->
    let sref = typecheck_exp c structt in
    let stident = begin match sref with
      | TRef (RStruct id) -> id
      | _ -> type_error structt "expected struct"
    end in
    begin match lookup_field_option stident locID c with
      | Some t -> t
      | None -> type_error e "weird struct"
    end
  | Call (exp, args) ->
    let argTys = List.map (typecheck_exp c) args in
    let funTy = typecheck_exp c exp in
    let argTy, t = 
    begin match funTy with
      | TRef (RFun (tys, RetVal rt)) -> tys, rt
      | _ -> type_error exp "bad expr"
  end in
    if List.length argTys = List.length argTy
      then ()
      else type_error e "wrong number of arguments";
    let subtys = List.map (fun (t',t) -> subtype c t' t) (List.combine argTys argTy) in
    if List.fold_left (&&) true subtys then t
      else type_error exp "Type mismatch"
  | Bop (op, e1, e2) ->
    begin match op with
      | Eq | Neq ->
        let ty1, ty2 = typecheck_exp c e1, typecheck_exp c e2 in
        if ((subtype c ty1 ty2) && (subtype c ty2 ty1)) then TBool
          else type_error e "wrong types"
      | _ ->
        let ty1, ty2, t = 
          begin match op with
          | Eq | Neq -> failwith "bool fault"
          | And | Or -> (TBool, TBool, TBool)
          | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
          | Add | Sub | Mul | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
        end in
        let ty1b, ty2b = typecheck_exp c e1, typecheck_exp c e2 in
        if ty1 = ty1b && ty2 = ty2b then t else type_error e "wrong types"
    end
  | Uop (op, e) ->
    let ty = typecheck_exp c e in
    begin match op with
      | Neg | Bitnot -> if ty = TInt then TInt else type_error e "no int"
      | Lognot -> if ty = TBool then TBool else type_error e "no bool"
    end
  end

(* statements --------------------------------------------------------------- *)

(* Typecheck a statement 
   This function should implement the statement typechecking rules from oat.pdf.  

   Inputs:
    - tc: the type context
    - s: the statement node
    - to_ret: the desired return type (from the function declaration)

   Returns:
     - the new type context (which includes newly declared variables in scope
       after this statement
     - A boolean indicating the return behavior of a statement:
        false:  might not return
        true: definitely returns 

        in the branching statements, both branches must definitely return

        Intuitively: if one of the two branches of a conditional does not 
        contain a return statement, then the entier conditional statement might 
        not return.
  
        looping constructs never definitely return 

   Uses the type_error function to indicate a (useful!) error message if the
   statement is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   - You will probably find it convenient to add a helper function that implements the 
     block typecheck rules.
*)

let rec checkBlock c retTy block = 
  match block with
  | [] -> false
  | [p] -> let _, t = typecheck_stmt c p retTy in t
  | p::b ->
    let tyC, t = typecheck_stmt c p retTy in
    if t == false 
      then checkBlock tyC retTy b
      else type_error p "error"


and typecheck_stmt (tc : Tctxt.t) (s:Ast.stmt node) (to_ret:ret_ty) : Tctxt.t * bool =
  
  let checkDecl c (ident, e) =
    begin match Tctxt.lookup_local_option ident c with
    | Some _ -> type_error e "error"
    | None -> Tctxt.add_local c ident (typecheck_exp c e)
  end in

  
  begin match s.elt with
  | Decl decl -> checkDecl tc decl, false
  | Assn (target, e) ->
    begin match target.elt with
      | Id id -> 
        begin match lookup_local_option id tc with
        | Some _ -> ()
        | None -> begin match lookup_global_option id tc with
          | Some (TRef (RFun _)) -> type_error target "error"
          | _ -> ()
        end
      end
      | Proj _ | Index _ -> ()
      | _ -> failwith "error"
    end;
    let ty = typecheck_exp tc target in
    let ty2 = typecheck_exp tc e in
    if subtype tc ty2 ty
      then ()
      else type_error s "error";
    tc, false
  | Cast (retTy, ident, e, block1, block2) ->
    begin match typecheck_exp tc e with
      | TNullRef tyH ->
        if subtype_ref tc tyH retTy
          then ()
          else type_error e "error"
      | _ -> type_error e "error"
    end;
    let st1 = checkBlock (Tctxt.add_local tc ident (TRef retTy)) to_ret block1 in
    let st2 = checkBlock tc to_ret block2 in
    tc, st1 && st2
  | SCall (e, args) ->
    let funTy = typecheck_exp tc e in
    let argTys = List.map (typecheck_exp tc) args in
    let argTy = 
      begin match funTy with
      | TRef (RFun (tys, RetVoid)) -> tys
      | _ -> type_error e "error"
    end in
    if List.length argTys = List.length argTy then ()
      else type_error s "error";
    let subTy = List.map (fun (ty2,ty1) -> subtype tc ty2 ty1) (List.combine argTys argTy) in
    if List.fold_left (&&) true subTy
      then tc, false
      else type_error e "error"
  | If (exp, block1, block2) ->
    begin match typecheck_exp tc exp with
      | TBool -> ()
      | _ -> type_error exp "type missmatch"
    end;
    let ty1 = checkBlock tc to_ret block1 in
    let ty2 = checkBlock tc to_ret block2 in
    tc, ty1 && ty2
  | While (e, block) ->
    begin match typecheck_exp tc e with
      | TBool -> ()
      | _ -> type_error e "type missmatch"
    end;
    let _ = checkBlock tc to_ret block in
    tc, false
  | For (decls, Some exp, Some post_stmt, block) ->
    let foldcheck c ds = List.fold_left (fun n d -> checkDecl n d) c ds in
    let ctxt = foldcheck tc decls in
    begin match typecheck_exp ctxt exp with
      | TBool -> ()
      | _ -> type_error exp "type missmatch"
    end;
    let a,l = typecheck_stmt ctxt post_stmt to_ret in
    if l then type_error post_stmt "error";
    let _ = checkBlock ctxt to_ret block in
    tc, false
  | Ret (Some e) ->
    let ty = typecheck_exp tc e in
    begin match to_ret with
    | RetVoid -> type_error s "error"
    | RetVal n -> if subtype tc ty n
      then tc, true
      else type_error s "error"
    end
  | Ret None -> tc, true
  | _ -> failwith "öhm"
end


(* struct type declarations ------------------------------------------------- *)
(* Here is an example of how to implement the TYP_TDECLOK rule, which is 
   is needed elswhere in the type system.
 *)

(* Helper function to look for duplicate field names *)
let rec check_dups fs =
  match fs with
  | [] -> false
  | h :: t -> (List.exists (fun x -> x.fieldName = h.fieldName) t) || check_dups t

let rec check_id_dups fs =
  match fs with
  | [] -> false
  | h :: t -> (List.exists (fun x -> x = h) t) || check_id_dups t

let typecheck_tdecl (tc : Tctxt.t) id fs  (l : 'a Ast.node) : unit =
  if check_dups fs
  then type_error l ("Repeated fields in " ^ id) 
  else List.iter (fun f -> typecheck_ty l tc f.ftyp) fs

(* function declarations ---------------------------------------------------- *)
(* typecheck a function declaration 
    - extends the local context with the types of the formal parameters to the 
      function
    - typechecks the body of the function (passing in the expected return type
    - checks that the function actually returns
*)
let rec typecheck_block_forceret (tc : Tctxt.t) (rty : Ast.ret_ty) (block : Ast.block) (returns : bool) : unit =
  let r = checkBlock tc rty block in
  if r == returns
    then ()
    else type_error (List.hd @@ List.rev block) ("Final statement does not have return behavior " ^ (if returns then "true" else "false")) 

let typecheck_fdecl (tc : Tctxt.t) ({frtyp=rty; fname=fname; args=args; body=body} : Ast.fdecl) (l : 'a Ast.node) : unit =
  let arg_ids = List.map snd args in
  let has_any_dups = check_id_dups arg_ids in
  let args2 = List.map (fun (x,y) -> (y,x)) args in
  if has_any_dups
    then type_error l "function arguments have duplicates"
    else typecheck_block_forceret {structs=tc.structs; locals=args2; globals=tc.globals} rty body true

(* creating the typchecking context ----------------------------------------- *)

(* The following functions correspond to the
   judgments that create the global typechecking context.

   create_struct_ctxt: - adds all the struct types to the struct 'H'
   context (checking to see that there are no duplicate fields

     H |-s prog ==> H'


   create_function_ctxt: - adds the the function identifiers and their
   types to the 'G' context (ensuring that there are no redeclared
   function identifiers)

     H ; G1 |-f prog ==> G2


   create_global_ctxt: - typechecks the global initializers and adds
   their identifiers to the 'G' global context

     H ; G1 |-g prog ==> G2    


   NOTE: global initializers may mention function identifiers as
   constants, but can't mention other global values *)

   let create_struct_ctxt (p:Ast.prog) : Tctxt.t =
    let struct_decls = List.filter (
      fun x -> match x with
      | Gtdecl _ -> true
      | _ -> false
    ) p in
    let structs : Tctxt.struct_ctxt = List.map (
      fun x -> match x with
      | Gtdecl {elt=(id, fields)} -> (id, fields)
      | _ -> failwith "wtf: filter is bs"
    ) struct_decls in
    let struct_ids = List.map fst structs in
    let has_any_dups = check_id_dups struct_ids in
    if has_any_dups
      then type_error (no_loc (Id "who cares")) "struct declarations have duplicates"
      else {structs=structs; locals=[]; globals=[]}
  
  let create_function_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
    let fun_decls = List.filter (
      fun x -> match x with
      | Gfdecl _ -> true
      | _ -> false
    ) p in
    let funs = builtins @ List.map (
      fun x -> match x with
      | Gfdecl {elt={frtyp=rty; fname=fname; args=args; body=body}} -> (fname, (List.map fst args, rty))
      | _ -> failwith "wtf: filter is bs"
    ) fun_decls in
    let funs_ctxt = List.map (fun (id,(tys, rty)) -> (id, Ast.TRef (Ast.RFun (tys, rty)))) funs in
    let fun_ids = List.map fst funs in
    let has_any_dups = check_id_dups fun_ids in
    if has_any_dups
      then type_error (no_loc (Id "who cares")) "function declarations have duplicates"
      else {structs=tc.structs; locals=[]; globals=funs_ctxt}
  
  let create_global_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
    let glbl_decls = List.filter (
      fun x -> match x with
      | Gvdecl _ -> true
      | _ -> false
    ) p in
    let glbls : Tctxt.global_ctxt = List.map (
      fun x -> match x with
      | Gvdecl {elt={name=name; init=exp_node}} -> (name, typecheck_exp tc exp_node)
      | _ -> failwith "wtf: filter is bs"
    ) glbl_decls in
    let glbl_ids = List.map fst glbls in
    let has_any_dups = check_id_dups glbl_ids in
    if has_any_dups
      then type_error (no_loc (Id "who cares")) "global variable declarations have duplicates"
      else {structs=tc.structs; locals=[]; globals=tc.globals @ glbls}


(* This function implements the |- prog and the H ; G |- prog 
   rules of the oat.pdf specification.   
*)
let typecheck_program (p:Ast.prog) : unit =
  let sc = create_struct_ctxt p in
  let fc = create_function_ctxt sc p in
  let tc = create_global_ctxt fc p in
  List.iter (fun p ->
    match p with
    | Gfdecl ({elt=f} as l) -> typecheck_fdecl tc f l
    | Gtdecl ({elt=(id, fs)} as l) -> typecheck_tdecl tc id fs l 
    | _ -> ()) p

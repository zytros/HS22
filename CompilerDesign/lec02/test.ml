let rec ackermann (m:int) (n:int) : int =
  if m = 0 then
    n + 1
  else if n = 0 then
    ackermann (m-1) 1
  else
    ackermann (m-1) (ackermann m (n-1));;

Printf.printf "ackermann of 2 2 is: %d\n"(ackermann 2 2)

type arithm_ast =
  | Add of arithm_ast * arithm_ast
  | Mul of arithm_ast * arithm_ast
  | Lit of int;;

type visit_order = INFIX | PREFIX | POSTFIX;;

let rec as_string (exp:arithm_ast) (order:visit_order) : string =
  if order = INFIX then
    match exp with
    | Lit a -> string_of_int a
    | Add (e1,e2) -> "(" ^ (as_string e1 order) ^ " + " ^ (as_string e2 order) ^ ")"
    | Mul (e1,e2) -> "(" ^ (as_string e1 order) ^ " * " ^ (as_string e2 order) ^ ")"
  else if order = PREFIX then
    match exp with
    | Lit a -> string_of_int a
    | Add (e1,e2) -> "+" ^ (as_string e1 order) ^ " " ^ (as_string e2 order)
    | Mul (e1,e2) -> "*" ^ (as_string e1 order) ^ " " ^ (as_string e2 order)
  else
    match exp with
    | Lit a -> string_of_int a
    | Add (e1,e2) -> (as_string e1 order) ^ " " ^ (as_string e2 order) ^ "+"
    | Mul (e1,e2) -> (as_string e1 order) ^ " " ^ (as_string e2 order) ^ "*"

let rec evaluate (exp:arithm_ast) : int =
  match exp with
  | Lit a -> a
  | Add (e1,e2) -> (evaluate e1) + (evaluate e2)
  | Mul (e1,e2) -> (evaluate e1) * (evaluate e2);;


let rec concat (list: string list) : string = 
  match list with
  | [] -> ""
  | x::xs -> x ^ ", " ^ (concat xs);;

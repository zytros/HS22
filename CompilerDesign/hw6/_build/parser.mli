
(* The type of tokens. *)

type token = 
  | WHILE
  | VAR
  | UIDENT of (string)
  | TVOID
  | TSTRING
  | TRUE
  | TINT
  | TILDE
  | TBOOL
  | STRUCT
  | STRING of (string)
  | STAR
  | SEMI
  | RPAREN
  | RETURN
  | RBRACKET
  | RBRACE
  | QUESTION
  | PLUS
  | NULL
  | NEW
  | LTLT
  | LTEQ
  | LT
  | LPAREN
  | LENGTH
  | LBRACKET
  | LBRACE
  | IOR
  | INT of (int64)
  | IFQ
  | IF
  | IDENT of (string)
  | IAND
  | GTGTGT
  | GTGT
  | GTEQ
  | GT
  | GLOBAL
  | FOR
  | FALSE
  | EQEQ
  | EQ
  | EOF
  | ELSE
  | DOT
  | DASH
  | COMMA
  | BAR
  | BANGEQ
  | BANG
  | ARROW
  | AMPER

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val stmt_top: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.stmt Ast.node)

val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.prog)

val exp_top: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.exp Ast.node)

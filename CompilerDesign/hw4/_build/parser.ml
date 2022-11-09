
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | WHILE
    | VAR
    | TVOID
    | TSTRING
    | TINT
    | TILDE
    | STRING of (
# 13 "parser.mly"
       (string)
# 21 "parser.ml"
  )
    | STAR
    | SEMI
    | RPAREN
    | RETURN
    | RBRACKET
    | RBRACE
    | PLUS
    | NULL
    | LPAREN
    | LBRACKET
    | LBRACE
    | INT of (
# 11 "parser.mly"
       (int64)
# 37 "parser.ml"
  )
    | IF
    | IDENT of (
# 14 "parser.mly"
       (string)
# 43 "parser.ml"
  )
    | GLOBAL
    | EQEQ
    | EQ
    | EOF
    | ELSE
    | DASH
    | COMMA
    | BANG
  
end

include MenhirBasics

# 1 "parser.mly"
  
open Ast

let loc (startpos:Lexing.position) (endpos:Lexing.position) (elt:'a) : 'a node =
  { elt ; loc=Range.mk_lex_range startpos endpos }


# 66 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_exp_top) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: exp_top. *)

  | MenhirState004 : (('s, 'r) _menhir_cell1_TILDE, 'r) _menhir_state
    (** State 004.
        Stack shape : TILDE.
        Start symbol: <undetermined>. *)

  | MenhirState005 : (('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_state
    (** State 005.
        Stack shape : LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState008 : (('s, 'r) _menhir_cell1_DASH, 'r) _menhir_state
    (** State 008.
        Stack shape : DASH.
        Start symbol: <undetermined>. *)

  | MenhirState009 : (('s, 'r) _menhir_cell1_BANG, 'r) _menhir_state
    (** State 009.
        Stack shape : BANG.
        Start symbol: <undetermined>. *)

  | MenhirState015 : (('s, 'r) _menhir_cell1_exp _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 015.
        Stack shape : exp LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState020 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 020.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState022 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 022.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState025 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 025.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState027 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 027.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState029 : (('s, 'r) _menhir_cell1_exp _menhir_cell0_DASH, 'r) _menhir_state
    (** State 029.
        Stack shape : exp DASH.
        Start symbol: <undetermined>. *)

  | MenhirState031 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 031.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState040 : ('s, _menhir_box_prog) _menhir_state
    (** State 040.
        Stack shape : .
        Start symbol: prog. *)

  | MenhirState043 : (('s, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_state
    (** State 043.
        Stack shape : TVOID IDENT LPAREN.
        Start symbol: prog. *)

  | MenhirState049 : (('s, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT, _menhir_box_prog) _menhir_state
    (** State 049.
        Stack shape : ty IDENT.
        Start symbol: prog. *)

  | MenhirState054 : ((('s, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN, _menhir_box_prog) _menhir_state
    (** State 054.
        Stack shape : TVOID IDENT LPAREN arglist RPAREN.
        Start symbol: prog. *)

  | MenhirState055 : (('s, 'r) _menhir_cell1_LBRACE, 'r) _menhir_state
    (** State 055.
        Stack shape : LBRACE.
        Start symbol: <undetermined>. *)

  | MenhirState057 : (('s, 'r) _menhir_cell1_WHILE _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 057.
        Stack shape : WHILE LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState059 : ((('s, 'r) _menhir_cell1_WHILE _menhir_cell0_LPAREN, 'r) _menhir_cell1_exp _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 059.
        Stack shape : WHILE LPAREN exp RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState063 : (('s, 'r) _menhir_cell1_VAR _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 063.
        Stack shape : VAR IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState065 : (('s, 'r) _menhir_cell1_RETURN, 'r) _menhir_state
    (** State 065.
        Stack shape : RETURN.
        Start symbol: <undetermined>. *)

  | MenhirState070 : (('s, 'r) _menhir_cell1_IF _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 070.
        Stack shape : IF LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState072 : ((('s, 'r) _menhir_cell1_IF _menhir_cell0_LPAREN, 'r) _menhir_cell1_exp _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 072.
        Stack shape : IF LPAREN exp RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState074 : (((('s, 'r) _menhir_cell1_IF _menhir_cell0_LPAREN, 'r) _menhir_cell1_exp _menhir_cell0_RPAREN, 'r) _menhir_cell1_block, 'r) _menhir_state
    (** State 074.
        Stack shape : IF LPAREN exp RPAREN block.
        Start symbol: <undetermined>. *)

  | MenhirState081 : (('s, 'r) _menhir_cell1_stmt, 'r) _menhir_state
    (** State 081.
        Stack shape : stmt.
        Start symbol: <undetermined>. *)

  | MenhirState084 : (('s, 'r) _menhir_cell1_lhs, 'r) _menhir_state
    (** State 084.
        Stack shape : lhs.
        Start symbol: <undetermined>. *)

  | MenhirState089 : (('s, 'r) _menhir_cell1_exp _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 089.
        Stack shape : exp LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState093 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 093.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState101 : (('s, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT, _menhir_box_prog) _menhir_state
    (** State 101.
        Stack shape : GLOBAL IDENT.
        Start symbol: prog. *)

  | MenhirState113 : (('s, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_state
    (** State 113.
        Stack shape : ty IDENT LPAREN.
        Start symbol: prog. *)

  | MenhirState115 : ((('s, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN, _menhir_box_prog) _menhir_state
    (** State 115.
        Stack shape : ty IDENT LPAREN arglist RPAREN.
        Start symbol: prog. *)

  | MenhirState120 : (('s, _menhir_box_prog) _menhir_cell1_decl, _menhir_box_prog) _menhir_state
    (** State 120.
        Stack shape : decl.
        Start symbol: prog. *)

  | MenhirState122 : ('s, _menhir_box_stmt_top) _menhir_state
    (** State 122.
        Stack shape : .
        Start symbol: stmt_top. *)


and ('s, 'r) _menhir_cell1_arglist = 
  | MenhirCell1_arglist of 's * ('s, 'r) _menhir_state * ((Ast.ty * Ast.id) list)

and ('s, 'r) _menhir_cell1_block = 
  | MenhirCell1_block of 's * ('s, 'r) _menhir_state * (Ast.block) * Lexing.position

and ('s, 'r) _menhir_cell1_decl = 
  | MenhirCell1_decl of 's * ('s, 'r) _menhir_state * (Ast.decl)

and ('s, 'r) _menhir_cell1_exp = 
  | MenhirCell1_exp of 's * ('s, 'r) _menhir_state * (Ast.exp Ast.node) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_lhs = 
  | MenhirCell1_lhs of 's * ('s, 'r) _menhir_state * (Ast.exp Ast.node) * Lexing.position

and ('s, 'r) _menhir_cell1_stmt = 
  | MenhirCell1_stmt of 's * ('s, 'r) _menhir_state * (Ast.stmt Ast.node)

and ('s, 'r) _menhir_cell1_ty = 
  | MenhirCell1_ty of 's * ('s, 'r) _menhir_state * (Ast.ty) * Lexing.position

and ('s, 'r) _menhir_cell1_BANG = 
  | MenhirCell1_BANG of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_DASH = 
  | MenhirCell1_DASH of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_DASH = 
  | MenhirCell0_DASH of 's * Lexing.position

and ('s, 'r) _menhir_cell1_GLOBAL = 
  | MenhirCell1_GLOBAL of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_IDENT = 
  | MenhirCell0_IDENT of 's * (
# 14 "parser.mly"
       (string)
# 272 "parser.ml"
) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_LBRACE = 
  | MenhirCell1_LBRACE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAREN = 
  | MenhirCell1_LPAREN of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_LPAREN = 
  | MenhirCell0_LPAREN of 's * Lexing.position

and ('s, 'r) _menhir_cell1_RETURN = 
  | MenhirCell1_RETURN of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_RPAREN = 
  | MenhirCell0_RPAREN of 's * Lexing.position

and ('s, 'r) _menhir_cell1_TILDE = 
  | MenhirCell1_TILDE of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_TVOID = 
  | MenhirCell1_TVOID of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_VAR = 
  | MenhirCell1_VAR of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_WHILE = 
  | MenhirCell1_WHILE of 's * ('s, 'r) _menhir_state * Lexing.position

and _menhir_box_stmt_top = 
  | MenhirBox_stmt_top of (Ast.stmt Ast.node) [@@unboxed]

and _menhir_box_prog = 
  | MenhirBox_prog of (Ast.prog) [@@unboxed]

and _menhir_box_exp_top = 
  | MenhirBox_exp_top of (Ast.exp Ast.node) [@@unboxed]

let _menhir_action_03 =
  fun xs ->
    let l = 
# 229 "<standard.mly>"
    ( xs )
# 319 "parser.ml"
     in
    (
# 79 "parser.mly"
                                            ( l )
# 324 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_04 =
  fun stmts ->
    (
# 140 "parser.mly"
                                   ( stmts )
# 332 "parser.ml"
     : (Ast.block))

let _menhir_action_05 =
  fun _endpos__5_ _startpos__1_ init name ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 74 "parser.mly"
    ( Gvdecl (loc _startpos _endpos { name; init }) )
# 342 "parser.ml"
     : (Ast.decl))

let _menhir_action_06 =
  fun _endpos_body_ _startpos__1_ args body fname ->
    let frtyp = 
# 86 "parser.mly"
           ( RetVoid )
# 350 "parser.ml"
     in
    let _startpos_frtyp_ = _startpos__1_ in
    let _endpos = _endpos_body_ in
    let _startpos = _startpos_frtyp_ in
    (
# 76 "parser.mly"
    ( Gfdecl (loc _startpos _endpos { frtyp; fname; args; body }) )
# 358 "parser.ml"
     : (Ast.decl))

let _menhir_action_07 =
  fun _endpos_body_ _startpos_t_ args body fname t ->
    let frtyp = 
# 87 "parser.mly"
           ( RetVal t )
# 366 "parser.ml"
     in
    let _startpos_frtyp_ = _startpos_t_ in
    let _endpos = _endpos_body_ in
    let _startpos = _startpos_frtyp_ in
    (
# 76 "parser.mly"
    ( Gfdecl (loc _startpos _endpos { frtyp; fname; args; body }) )
# 374 "parser.ml"
     : (Ast.decl))

let _menhir_action_08 =
  fun () ->
    (
# 147 "parser.mly"
                      ( [] )
# 382 "parser.ml"
     : (Ast.block))

let _menhir_action_09 =
  fun b ->
    (
# 148 "parser.mly"
                      ( b )
# 390 "parser.ml"
     : (Ast.block))

let _menhir_action_10 =
  fun ifs ->
    (
# 149 "parser.mly"
                      ( [ ifs ] )
# 398 "parser.ml"
     : (Ast.block))

let _menhir_action_11 =
  fun _endpos_i_ _startpos_i_ i ->
    let _endpos = _endpos_i_ in
    let _startpos = _startpos_i_ in
    (
# 114 "parser.mly"
                        ( loc _startpos _endpos @@ CInt i )
# 408 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_12 =
  fun _endpos__2_ _startpos__1_ ->
    let t = 
# 90 "parser.mly"
            ( RString )
# 416 "parser.ml"
     in
    let _startpos_t_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 115 "parser.mly"
                          ( loc _startpos _endpos @@ CNull t )
# 424 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_13 =
  fun _endpos__2_ _startpos_t_ t ->
    let t = 
# 91 "parser.mly"
                           ( RArray t )
# 432 "parser.ml"
     in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 115 "parser.mly"
                          ( loc _startpos _endpos @@ CNull t )
# 439 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_14 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 94 "parser.mly"
           ( Add )
# 447 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 116 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 454 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_15 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 95 "parser.mly"
           ( Sub )
# 462 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 116 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 469 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_16 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 96 "parser.mly"
           ( Mul )
# 477 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 116 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 484 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_17 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let b = 
# 97 "parser.mly"
           ( Eq )
# 492 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 116 "parser.mly"
                        ( loc _startpos _endpos @@ Bop (b, e1, e2) )
# 499 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_18 =
  fun _endpos_e_ _startpos__1_ e ->
    let u = 
# 100 "parser.mly"
          ( Neg )
# 507 "parser.ml"
     in
    let _startpos_u_ = _startpos__1_ in
    let _endpos = _endpos_e_ in
    let _startpos = _startpos_u_ in
    (
# 117 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 515 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_19 =
  fun _endpos_e_ _startpos__1_ e ->
    let u = 
# 101 "parser.mly"
          ( Lognot )
# 523 "parser.ml"
     in
    let _startpos_u_ = _startpos__1_ in
    let _endpos = _endpos_e_ in
    let _startpos = _startpos_u_ in
    (
# 117 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 531 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_20 =
  fun _endpos_e_ _startpos__1_ e ->
    let u = 
# 102 "parser.mly"
          ( Bitnot )
# 539 "parser.ml"
     in
    let _startpos_u_ = _startpos__1_ in
    let _endpos = _endpos_e_ in
    let _startpos = _startpos_u_ in
    (
# 117 "parser.mly"
                        ( loc _startpos _endpos @@ Uop (u, e) )
# 547 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_21 =
  fun _endpos_id_ _startpos_id_ id ->
    let _endpos = _endpos_id_ in
    let _startpos = _startpos_id_ in
    (
# 118 "parser.mly"
                        ( loc _startpos _endpos @@ Id id )
# 557 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_22 =
  fun _endpos__4_ _startpos_e_ e i ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    (
# 120 "parser.mly"
                        ( loc _startpos _endpos @@ Index (e, i) )
# 567 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_23 =
  fun _endpos__4_ _startpos_e_ e xs ->
    let es = 
# 229 "<standard.mly>"
    ( xs )
# 575 "parser.ml"
     in
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    (
# 122 "parser.mly"
                        ( loc _startpos _endpos @@ Call (e,es) )
# 582 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_24 =
  fun e ->
    (
# 123 "parser.mly"
                        ( e )
# 590 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_25 =
  fun e ->
    (
# 64 "parser.mly"
              ( e )
# 598 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_26 =
  fun _endpos__2_ _startpos__1_ ->
    let t = 
# 90 "parser.mly"
            ( RString )
# 606 "parser.ml"
     in
    let _startpos_t_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 105 "parser.mly"
                 ( loc _startpos _endpos @@ CNull t )
# 614 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_27 =
  fun _endpos__2_ _startpos_t_ t ->
    let t = 
# 91 "parser.mly"
                           ( RArray t )
# 622 "parser.ml"
     in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 105 "parser.mly"
                 ( loc _startpos _endpos @@ CNull t )
# 629 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_28 =
  fun _endpos_i_ _startpos_i_ i ->
    let _endpos = _endpos_i_ in
    let _startpos = _startpos_i_ in
    (
# 106 "parser.mly"
               ( loc _startpos _endpos @@ CInt i )
# 639 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_29 =
  fun _endpos_b2_ _startpos__1_ b1 b2 e ->
    let _endpos = _endpos_b2_ in
    let _startpos = _startpos__1_ in
    (
# 144 "parser.mly"
    ( loc _startpos _endpos @@ If(e,b1,b2) )
# 649 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_30 =
  fun _endpos_id_ _startpos_id_ id ->
    let _endpos = _endpos_id_ in
    let _startpos = _startpos_id_ in
    (
# 109 "parser.mly"
                        ( loc _startpos _endpos @@ Id id )
# 659 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_31 =
  fun _endpos__4_ _startpos_e_ e i ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    (
# 111 "parser.mly"
                        ( loc _startpos _endpos @@ Index (e, i) )
# 669 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_32 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 677 "parser.ml"
     : (Ast.prog))

let _menhir_action_33 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 685 "parser.ml"
     : (Ast.prog))

let _menhir_action_34 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 693 "parser.ml"
     : (Ast.block))

let _menhir_action_35 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 701 "parser.ml"
     : (Ast.block))

let _menhir_action_36 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 709 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_37 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 717 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_38 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 725 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_39 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 733 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_40 =
  fun p ->
    (
# 70 "parser.mly"
                      ( p )
# 741 "parser.ml"
     : (Ast.prog))

let _menhir_action_41 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 749 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_42 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 757 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_43 =
  fun x y ->
    let x = 
# 164 "<standard.mly>"
    ( (x, y) )
# 765 "parser.ml"
     in
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 770 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_44 =
  fun x xs y ->
    let x = 
# 164 "<standard.mly>"
    ( (x, y) )
# 778 "parser.ml"
     in
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 783 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_45 =
  fun _endpos__2_ _startpos_d_ d ->
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_d_ in
    (
# 129 "parser.mly"
                        ( loc _startpos _endpos @@ Decl(d) )
# 793 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_46 =
  fun _endpos__4_ _startpos_p_ e p ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_p_ in
    (
# 130 "parser.mly"
                        ( loc _startpos _endpos @@ Assn(p,e) )
# 803 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_47 =
  fun _endpos__5_ _startpos_e_ e xs ->
    let es = 
# 229 "<standard.mly>"
    ( xs )
# 811 "parser.ml"
     in
    let _endpos = _endpos__5_ in
    let _startpos = _startpos_e_ in
    (
# 132 "parser.mly"
                        ( loc _startpos _endpos @@ SCall (e, es) )
# 818 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_48 =
  fun ifs ->
    (
# 133 "parser.mly"
                        ( ifs )
# 826 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_49 =
  fun _endpos__2_ _startpos__1_ ->
    let _endpos = _endpos__2_ in
    let _startpos = _startpos__1_ in
    (
# 134 "parser.mly"
                        ( loc _startpos _endpos @@ Ret(None) )
# 836 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_50 =
  fun _endpos__3_ _startpos__1_ e ->
    let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    (
# 135 "parser.mly"
                        ( loc _startpos _endpos @@ Ret(Some e) )
# 846 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_51 =
  fun _endpos_b_ _startpos__1_ b e ->
    let _endpos = _endpos_b_ in
    let _startpos = _startpos__1_ in
    (
# 137 "parser.mly"
                        ( loc _startpos _endpos @@ While(e, b) )
# 856 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_52 =
  fun s ->
    (
# 67 "parser.mly"
               ( s )
# 864 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_53 =
  fun () ->
    (
# 82 "parser.mly"
           ( TInt )
# 872 "parser.ml"
     : (Ast.ty))

let _menhir_action_54 =
  fun () ->
    let r = 
# 90 "parser.mly"
            ( RString )
# 880 "parser.ml"
     in
    (
# 83 "parser.mly"
           ( TRef r )
# 885 "parser.ml"
     : (Ast.ty))

let _menhir_action_55 =
  fun t ->
    let r = 
# 91 "parser.mly"
                           ( RArray t )
# 893 "parser.ml"
     in
    (
# 83 "parser.mly"
           ( TRef r )
# 898 "parser.ml"
     : (Ast.ty))

let _menhir_action_56 =
  fun id init ->
    (
# 126 "parser.mly"
                             ( (id, init) )
# 906 "parser.ml"
     : (Ast.vdecl))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | BANG ->
        "BANG"
    | COMMA ->
        "COMMA"
    | DASH ->
        "DASH"
    | ELSE ->
        "ELSE"
    | EOF ->
        "EOF"
    | EQ ->
        "EQ"
    | EQEQ ->
        "EQEQ"
    | GLOBAL ->
        "GLOBAL"
    | IDENT _ ->
        "IDENT"
    | IF ->
        "IF"
    | INT _ ->
        "INT"
    | LBRACE ->
        "LBRACE"
    | LBRACKET ->
        "LBRACKET"
    | LPAREN ->
        "LPAREN"
    | NULL ->
        "NULL"
    | PLUS ->
        "PLUS"
    | RBRACE ->
        "RBRACE"
    | RBRACKET ->
        "RBRACKET"
    | RETURN ->
        "RETURN"
    | RPAREN ->
        "RPAREN"
    | SEMI ->
        "SEMI"
    | STAR ->
        "STAR"
    | STRING _ ->
        "STRING"
    | TILDE ->
        "TILDE"
    | TINT ->
        "TINT"
    | TSTRING ->
        "TSTRING"
    | TVOID ->
        "TVOID"
    | VAR ->
        "VAR"
    | WHILE ->
        "WHILE"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_run_124 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_stmt_top =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let s = _v in
          let _v = _menhir_action_52 s in
          MenhirBox_stmt_top _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_118 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_prog =
    fun _menhir_stack _v ->
      let p = _v in
      let _v = _menhir_action_40 p in
      MenhirBox_prog _v
  
  let rec _menhir_run_121 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_decl -> _ -> _menhir_box_prog =
    fun _menhir_stack _v ->
      let MenhirCell1_decl (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_33 x xs in
      _menhir_goto_list_decl_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_decl_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState120 ->
          _menhir_run_121 _menhir_stack _v
      | MenhirState040 ->
          _menhir_run_118 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_087_spec_122 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_stmt_top =
    fun _menhir_stack _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_48 ifs in
      _menhir_run_124 _menhir_stack _v _tok
  
  let rec _menhir_run_001 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NULL ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _endpos__2_) = (_startpos, _endpos) in
          let _v = _menhir_action_12 _endpos__2_ _startpos__1_ in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__2_ _startpos__1_ _v _menhir_s _tok
      | LBRACKET ->
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_54 () in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_exp : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState093 ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState122 ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState004 ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState005 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState029 ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState025 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState022 ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState020 ->
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState089 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState015 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState009 ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_094 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACKET ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | DASH | EQEQ | LBRACKET | LPAREN | PLUS | STAR ->
              let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
              let (i, _endpos__4_) = (_v, _endpos_0) in
              let _v = _menhir_action_22 _endpos__4_ _startpos_e_ e i in
              _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_e_ _v _menhir_s _tok
          | EQ ->
              let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
              let (i, _endpos__4_) = (_v, _endpos_0) in
              let _v = _menhir_action_31 _endpos__4_ _startpos_e_ e i in
              _menhir_goto_lhs _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e_ _v _menhir_s
          | _ ->
              _eRR ())
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_020 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_53 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState020 _tok
      | TILDE ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | LPAREN ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState020 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
          _menhir_run_021 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState020 _tok
      | DASH ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | BANG ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState020
      | _ ->
          _eRR ()
  
  and _menhir_run_010 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RBRACKET ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | NULL ->
                  let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__2_, _startpos_t_, t) = (_endpos_0, _startpos, _v) in
                  let _v = _menhir_action_13 _endpos__2_ _startpos_t_ t in
                  _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__2_ _startpos_t_ _v _menhir_s _tok
              | LBRACKET ->
                  let (_startpos_t_, t) = (_startpos, _v) in
                  let _v = _menhir_action_55 t in
                  _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_ty : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState120 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState040 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState113 ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState122 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState093 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState089 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState004 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState005 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState029 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState025 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState022 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState020 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState015 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState009 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_111 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | IDENT _v_0 ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0, _startpos_1, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos_2) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_3 in
                  let _v = _menhir_action_54 () in
                  _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState113 _tok
              | TINT ->
                  let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_5 in
                  let _v = _menhir_action_53 () in
                  _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState113 _tok
              | RPAREN ->
                  let _v = _menhir_action_38 () in
                  _menhir_run_052_spec_113 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_ty (_menhir_stack, _menhir_s, t, _startpos_t_) = _menhir_stack in
          let _v = _menhir_action_55 t in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer
      | IDENT _v_0 ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | COMMA ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v_0, _startpos_1, _endpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_2 in
                  let _v = _menhir_action_54 () in
                  _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState049 _tok
              | TINT ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_53 () in
                  _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState049 _tok
              | _ ->
                  _eRR ())
          | RPAREN ->
              let (x, y) = (_v, _v_0) in
              let _v = _menhir_action_43 x y in
              _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState113 ->
          _menhir_run_051_spec_113 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState043 ->
          _menhir_run_051_spec_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState049 ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_051_spec_113 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_39 x in
      _menhir_run_052_spec_113 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_052_spec_113 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let xs = _v in
      let _v = _menhir_action_03 xs in
      let _menhir_s = MenhirState113 in
      let _menhir_stack = MenhirCell1_arglist (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState115
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | VAR ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_53 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState055 _tok
      | TILDE ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | RETURN ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | LPAREN ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState055 _tok
      | IF ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | IDENT _v ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055
      | DASH ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | BANG ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | RBRACE ->
          let _v = _menhir_action_34 () in
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_056 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_WHILE (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
          | TINT ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_1 in
              let _v = _menhir_action_53 () in
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState057 _tok
          | TILDE ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
          | LPAREN ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
          | INT _v ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_2, _v) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState057 _tok
          | IDENT _v ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_3, _v) in
              let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
              _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState057 _tok
          | DASH ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
          | BANG ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_004 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_TILDE (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState004
      | TINT ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_53 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState004 _tok
      | TILDE ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState004
      | LPAREN ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState004
      | INT _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_1, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState004 _tok
      | IDENT _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_2, _v) in
          let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState004 _tok
      | DASH ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState004
      | BANG ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState004
      | _ ->
          _eRR ()
  
  and _menhir_run_005 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | TINT ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_53 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState005 _tok
      | TILDE ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | LPAREN ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | INT _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_1, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState005 _tok
      | IDENT _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_2, _v) in
          let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState005 _tok
      | DASH ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | BANG ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (e, _endpos__3_) = (_v, _endpos_0) in
          let _v = _menhir_action_24 e in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _startpos__1_ _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_025 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_53 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState025 _tok
      | TILDE ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
      | LPAREN ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState025 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState025 _tok
      | DASH ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
      | BANG ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
      | _ ->
          _eRR ()
  
  and _menhir_run_026 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | DASH | EOF | PLUS | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_14 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_015 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
      | TINT ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_53 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState015 _tok
      | TILDE ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
      | LPAREN ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
      | INT _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_1, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState015 _tok
      | IDENT _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_2, _v) in
          let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState015 _tok
      | DASH ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
      | BANG ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
      | RPAREN ->
          let _v = _menhir_action_36 () in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_019 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
          | TINT ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_0 in
              let _v = _menhir_action_53 () in
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState031 _tok
          | TILDE ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
          | LPAREN ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
          | INT _v_2 ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_4 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_4, _startpos_3, _v_2) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState031 _tok
          | IDENT _v_6 ->
              let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_8 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos_8, _startpos_7, _v_6) in
              let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState031 _tok
          | DASH ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
          | BANG ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
          | _ ->
              _eRR ())
      | RPAREN ->
          let x = _v in
          let _v = _menhir_action_41 x in
          _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_022 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_53 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState022 _tok
      | TILDE ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | LPAREN ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState022 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState022 _tok
      | DASH ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | BANG ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState022
      | _ ->
          _eRR ()
  
  and _menhir_run_023 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACKET ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
          let (i, _endpos__4_) = (_v, _endpos_0) in
          let _v = _menhir_action_22 _endpos__4_ _startpos_e_ e i in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_e_ _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_027 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState027
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_53 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState027 _tok
      | TILDE ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState027
      | LPAREN ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState027
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState027 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState027 _tok
      | DASH ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState027
      | BANG ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState027
      | _ ->
          _eRR ()
  
  and _menhir_run_028 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | EOF | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_17 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_DASH (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
      | TINT ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_53 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState029 _tok
      | TILDE ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
      | LPAREN ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
      | INT _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_1, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState029 _tok
      | IDENT _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_2, _v) in
          let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState029 _tok
      | DASH ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
      | BANG ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
      | _ ->
          _eRR ()
  
  and _menhir_run_030 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_DASH as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | DASH | EOF | PLUS | RBRACKET | RPAREN | SEMI ->
          let MenhirCell0_DASH (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_15 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_008 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_DASH (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | TINT ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_53 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState008 _tok
      | TILDE ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | LPAREN ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | INT _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_1, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState008 _tok
      | IDENT _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_2, _v) in
          let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState008 _tok
      | DASH ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | BANG ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState008
      | _ ->
          _eRR ()
  
  and _menhir_run_033 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_DASH as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | DASH | EOF | PLUS | RBRACKET | RPAREN | SEMI ->
          let MenhirCell1_DASH (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos_e_, e) = (_endpos, _v) in
          let _v = _menhir_action_18 _endpos_e_ _startpos__1_ e in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_009 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_BANG (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState009
      | TINT ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_53 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState009 _tok
      | TILDE ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState009
      | LPAREN ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState009
      | INT _v ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_1, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState009 _tok
      | IDENT _v ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_2, _v) in
          let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState009 _tok
      | DASH ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState009
      | BANG ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState009
      | _ ->
          _eRR ()
  
  and _menhir_run_014 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_BANG as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | DASH | EOF | PLUS | RBRACKET | RPAREN | SEMI | STAR ->
          let MenhirCell1_BANG (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos_e_, e) = (_endpos, _v) in
          let _v = _menhir_action_19 _endpos_e_ _startpos__1_ e in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_exp_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState031 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState089 ->
          _menhir_run_016_spec_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState015 ->
          _menhir_run_016_spec_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_032 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_exp (_menhir_stack, _menhir_s, x, _, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_42 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_016_spec_089 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_LPAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_37 x in
      _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_090 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_LPAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
          let (xs, _endpos__5_) = (_v, _endpos_0) in
          let _v = _menhir_action_47 _endpos__5_ _startpos_e_ e xs in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | DASH | EQEQ | LBRACKET | LPAREN | PLUS | STAR ->
          let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
          let (xs, _endpos__4_) = (_v, _endpos) in
          let _v = _menhir_action_23 _endpos__4_ _startpos_e_ e xs in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_e_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_stmt : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState122 ->
          _menhir_run_124 _menhir_stack _v _tok
      | MenhirState081 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_081 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | VAR ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_53 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState081 _tok
      | TILDE ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | RETURN ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | LPAREN ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | INT _v_1 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v_1) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState081 _tok
      | IF ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | IDENT _v_3 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState081
      | DASH ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | BANG ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | RBRACE ->
          let _v = _menhir_action_34 () in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_VAR (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos_0, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EQ ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
              | TINT ->
                  let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_1 in
                  let _v = _menhir_action_53 () in
                  _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState063 _tok
              | TILDE ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
              | LPAREN ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
              | INT _v_3 ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_5 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_i_, _startpos_i_, i) = (_endpos_5, _startpos_4, _v_3) in
                  let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
                  _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState063 _tok
              | IDENT _v_7 ->
                  let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_9 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_id_, _startpos_id_, id) = (_endpos_9, _startpos_8, _v_7) in
                  let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
                  _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState063 _tok
              | DASH ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
              | BANG ->
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_064 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_VAR _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let MenhirCell0_IDENT (_menhir_stack, id, _, _) = _menhir_stack in
          let MenhirCell1_VAR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let init = _v in
          let _v = _menhir_action_56 id init in
          let _startpos = _startpos__1_ in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__2_, _startpos_d_, d) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_45 _endpos__2_ _startpos_d_ d in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | TINT ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_53 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState065 _tok
      | TILDE ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | SEMI ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _endpos__2_) = (_startpos, _endpos) in
          let _v = _menhir_action_49 _endpos__2_ _startpos__1_ in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | LPAREN ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | INT _v ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_1, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState065 _tok
      | IDENT _v ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_2, _v) in
          let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState065 _tok
      | DASH ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | BANG ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_RETURN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (e, _endpos__3_) = (_v, _endpos_0) in
          let _v = _menhir_action_50 _endpos__3_ _startpos__1_ e in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_088 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | TINT ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_1 in
              let _v = _menhir_action_53 () in
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState089 _tok
          | TILDE ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | LPAREN ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | INT _v_3 ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_5 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_5, _startpos_4, _v_3) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState089 _tok
          | IDENT _v_7 ->
              let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_9 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos_9, _startpos_8, _v_7) in
              let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState089 _tok
          | DASH ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | BANG ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
          | RPAREN ->
              let _v = _menhir_action_36 () in
              _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v
          | _ ->
              _eRR ())
      | LBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
          | TINT ->
              let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_12 in
              let _v = _menhir_action_53 () in
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState093 _tok
          | TILDE ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
          | LPAREN ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
          | INT _v_14 ->
              let _startpos_15 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_16 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_16, _startpos_15, _v_14) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState093 _tok
          | IDENT _v_18 ->
              let _startpos_19 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_20 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos_20, _startpos_19, _v_18) in
              let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
              _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState093 _tok
          | DASH ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
          | BANG ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
          | _ ->
              _eRR ())
      | EQEQ ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
          | TINT ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_1 in
              let _v = _menhir_action_53 () in
              _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState070 _tok
          | TILDE ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
          | LPAREN ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
          | INT _v ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_2, _v) in
              let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
              _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState070 _tok
          | IDENT _v ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_3, _v) in
              let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
              _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState070 _tok
          | DASH ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
          | BANG ->
              _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_071 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_078 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | DASH | EQEQ | LBRACKET | LPAREN | PLUS | STAR ->
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v _menhir_s _tok
      | EQ ->
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_30 _endpos_id_ _startpos_id_ id in
          _menhir_goto_lhs _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_id_ _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_lhs : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s ->
      let _menhir_stack = MenhirCell1_lhs (_menhir_stack, _menhir_s, _v, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | TINT ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_53 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState084 _tok
      | TILDE ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | LPAREN ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | INT _v_2 ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_3, _v_2) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState084 _tok
      | IDENT _v_5 ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_6, _v_5) in
          let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState084 _tok
      | DASH ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | BANG ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | _ ->
          _eRR ()
  
  and _menhir_run_085 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_lhs as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_lhs (_menhir_stack, _menhir_s, p, _startpos_p_) = _menhir_stack in
          let (e, _endpos__4_) = (_v, _endpos_0) in
          let _v = _menhir_action_46 _endpos__4_ _startpos_p_ e p in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_082 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_stmt -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_stmt (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_35 x xs in
      _menhir_goto_list_stmt_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_stmt_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState055 ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState081 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_096 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LBRACE -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LBRACE (_menhir_stack, _menhir_s) = _menhir_stack in
      let (_endpos__3_, stmts) = (_endpos, _v) in
      let _v = _menhir_action_04 stmts in
      _menhir_goto_block _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _v _menhir_s _tok
  
  and _menhir_goto_block : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState115 ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState054 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState074 ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState072 ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_116 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_arglist (_menhir_stack, _, args) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, fname, _, _) = _menhir_stack in
      let MenhirCell1_ty (_menhir_stack, _menhir_s, t, _startpos_t_) = _menhir_stack in
      let (_endpos_body_, body) = (_endpos, _v) in
      let _v = _menhir_action_07 _endpos_body_ _startpos_t_ args body fname t in
      _menhir_goto_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_decl : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_decl (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TVOID ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | TSTRING ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_54 () in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState120 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_53 () in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState120 _tok
      | GLOBAL ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState120
      | EOF ->
          let _v = _menhir_action_32 () in
          _menhir_run_121 _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_TVOID (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos_0, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos_1) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_2 in
                  let _v = _menhir_action_54 () in
                  _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState043 _tok
              | TINT ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_53 () in
                  _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState043 _tok
              | RPAREN ->
                  let _v = _menhir_action_38 () in
                  _menhir_run_052_spec_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_052_spec_043 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let xs = _v in
      let _v = _menhir_action_03 xs in
      let _menhir_s = MenhirState043 in
      let _menhir_stack = MenhirCell1_arglist (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | _ ->
          _eRR ()
  
  and _menhir_run_099 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_GLOBAL (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v, _startpos_0, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EQ ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TSTRING ->
                  let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | NULL ->
                      let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_startpos__1_, _endpos__2_) = (_startpos_1, _endpos_2) in
                      let _v = _menhir_action_26 _endpos__2_ _startpos__1_ in
                      _menhir_goto_gexp _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | LBRACKET ->
                      let _v_4 = _menhir_action_54 () in
                      _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_1 _v_4 MenhirState101 _tok
                  | _ ->
                      _eRR ())
              | TINT ->
                  let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_5 in
                  let _v = _menhir_action_53 () in
                  _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState101 _tok
              | INT _v_7 ->
                  let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_9 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_i_, _startpos_i_, i) = (_endpos_9, _startpos_8, _v_7) in
                  let _v = _menhir_action_28 _endpos_i_ _startpos_i_ i in
                  _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_gexp : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_109 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, name, _, _) = _menhir_stack in
          let MenhirCell1_GLOBAL (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (init, _endpos__5_) = (_v, _endpos) in
          let _v = _menhir_action_05 _endpos__5_ _startpos__1_ init name in
          _menhir_goto_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_105 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RBRACKET ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | NULL ->
                  let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__2_, _startpos_t_, t) = (_endpos_0, _startpos, _v) in
                  let _v = _menhir_action_27 _endpos__2_ _startpos_t_ t in
                  _menhir_goto_gexp _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | LBRACKET ->
                  let (_startpos_t_, t) = (_startpos, _v) in
                  let _v = _menhir_action_55 t in
                  _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_098 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_arglist (_menhir_stack, _, args) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, fname, _, _) = _menhir_stack in
      let MenhirCell1_TVOID (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_body_, body) = (_endpos, _v) in
      let _v = _menhir_action_06 _endpos_body_ _startpos__1_ args body fname in
      _menhir_goto_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_076 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN, ttv_result) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_09 b in
      _menhir_goto_else_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_b_ _v _tok
  
  and _menhir_goto_else_stmt : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN, ttv_result) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_block (_menhir_stack, _, b1, _) = _menhir_stack in
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_exp (_menhir_stack, _, e, _, _) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_IF (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_b2_, b2) = (_endpos, _v) in
      let _v = _menhir_action_29 _endpos_b2_ _startpos__1_ b1 b2 e in
      _menhir_goto_if_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_b2_ _v _menhir_s _tok
  
  and _menhir_goto_if_stmt : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState122 ->
          _menhir_run_087_spec_122 _menhir_stack _v _tok
      | MenhirState055 ->
          _menhir_run_087_spec_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState081 ->
          _menhir_run_087_spec_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState074 ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_087_spec_055 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_48 ifs in
      _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState055 _tok
  
  and _menhir_run_087_spec_081 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_48 ifs in
      _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState081 _tok
  
  and _menhir_run_075 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN, ttv_result) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let (_endpos_ifs_, ifs) = (_endpos, _v) in
      let _v = _menhir_action_10 ifs in
      _menhir_goto_else_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_ifs_ _v _tok
  
  and _menhir_run_073 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_block (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
          | IF ->
              _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
          | _ ->
              _eRR ())
      | BANG | DASH | EOF | IDENT _ | IF | INT _ | LPAREN | RBRACE | RETURN | TILDE | TINT | TSTRING | VAR | WHILE ->
          let _v = _menhir_action_08 () in
          _menhir_goto_else_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_WHILE _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_exp (_menhir_stack, _, e, _, _) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_WHILE (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_51 _endpos_b_ _startpos__1_ b e in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_016_spec_015 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_LPAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_37 x in
      _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_017 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_LPAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_exp (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
      let (xs, _endpos__4_) = (_v, _endpos) in
      let _v = _menhir_action_23 _endpos__4_ _startpos_e_ e xs in
      _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_e_ _v _menhir_s _tok
  
  and _menhir_run_036 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_TILDE as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | DASH | EOF | PLUS | RBRACKET | RPAREN | SEMI | STAR ->
          let MenhirCell1_TILDE (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos_e_, e) = (_endpos, _v) in
          let _v = _menhir_action_20 _endpos_e_ _startpos__1_ e in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_058 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_WHILE _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | STAR ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_051_spec_043 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_39 x in
      _menhir_run_052_spec_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_050 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell0_IDENT (_menhir_stack, y, _, _) = _menhir_stack in
      let MenhirCell1_ty (_menhir_stack, _menhir_s, x, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_44 x xs y in
      _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_021 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | DASH | EOF | PLUS | RBRACKET | RPAREN | SEMI | STAR ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_16 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_exp_top) _menhir_state -> _ -> _menhir_box_exp_top =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LPAREN ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EOF ->
          let e = _v in
          let _v = _menhir_action_25 e in
          MenhirBox_exp_top _v
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  let rec _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_exp_top =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_53 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState000 _tok
      | TILDE ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | LPAREN ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState000 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_21 _endpos_id_ _startpos_id_ id in
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState000 _tok
      | DASH ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | BANG ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | _ ->
          _eRR ()
  
  let rec _menhir_run_040 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TVOID ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | TSTRING ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_54 () in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState040 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_53 () in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState040 _tok
      | GLOBAL ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState040
      | EOF ->
          let _v = _menhir_action_32 () in
          _menhir_run_118 _menhir_stack _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_122 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_stmt_top =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | VAR ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_53 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState122 _tok
      | TILDE ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | RETURN ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | LPAREN ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_11 _endpos_i_ _startpos_i_ i in
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState122 _tok
      | IF ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | IDENT _v ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState122
      | DASH ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | BANG ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState122
      | _ ->
          _eRR ()
  
end

let stmt_top =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_stmt_top v = _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let prog =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_prog v = _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let exp_top =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_exp_top v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

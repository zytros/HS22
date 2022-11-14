
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | WHILE
    | VERTBARI
    | VERTBAR
    | VAR
    | TVOID
    | TSTRING
    | TRUE
    | TINT
    | TILDE
    | TBOOL
    | STRING of (
# 13 "parser.mly"
       (string)
# 25 "parser.ml"
  )
    | STAR
    | SEMI
    | RPAREN
    | RETURN
    | RBRACKET
    | RBRACE
    | PLUS
    | NULL
    | NEW
    | LTLT
    | LTEQ
    | LT
    | LPAREN
    | LOGANDI
    | LOGAND
    | LBRACKET
    | LBRACE
    | INT of (
# 11 "parser.mly"
       (int64)
# 47 "parser.ml"
  )
    | IF
    | IDENT of (
# 14 "parser.mly"
       (string)
# 53 "parser.ml"
  )
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
    | DASH
    | COMMA
    | BANGEQ
    | BANG
  
end

include MenhirBasics

# 1 "parser.mly"
  
open Ast

let loc (startpos:Lexing.position) (endpos:Lexing.position) (elt:'a) : 'a node =
  { elt ; loc=Range.mk_lex_range startpos endpos }


# 83 "parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_exp_top) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: exp_top. *)

  | MenhirState005 : (('s, 'r) _menhir_cell1_TILDE, 'r) _menhir_state
    (** State 005.
        Stack shape : TILDE.
        Start symbol: <undetermined>. *)

  | MenhirState008 : (('s, 'r) _menhir_cell1_NEW, 'r) _menhir_state
    (** State 008.
        Stack shape : NEW.
        Start symbol: <undetermined>. *)

  | MenhirState011 : ((('s, 'r) _menhir_cell1_NEW, 'r) _menhir_cell1_ty, 'r) _menhir_state
    (** State 011.
        Stack shape : NEW ty.
        Start symbol: <undetermined>. *)

  | MenhirState013 : (((('s, 'r) _menhir_cell1_NEW, 'r) _menhir_cell1_ty, 'r) _menhir_cell1_RBRACKET, 'r) _menhir_state
    (** State 013.
        Stack shape : NEW ty RBRACKET.
        Start symbol: <undetermined>. *)

  | MenhirState014 : (('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_state
    (** State 014.
        Stack shape : LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState018 : (('s, 'r) _menhir_cell1_DASH, 'r) _menhir_state
    (** State 018.
        Stack shape : DASH.
        Start symbol: <undetermined>. *)

  | MenhirState019 : (('s, 'r) _menhir_cell1_BANG, 'r) _menhir_state
    (** State 019.
        Stack shape : BANG.
        Start symbol: <undetermined>. *)

  | MenhirState021 : (('s, 'r) _menhir_cell1_ty, 'r) _menhir_state
    (** State 021.
        Stack shape : ty.
        Start symbol: <undetermined>. *)

  | MenhirState025 : (('s, 'r) _menhir_cell1_expauxaux _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 025.
        Stack shape : expauxaux LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState031 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 031.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState033 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 033.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState035 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 035.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState037 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 037.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState039 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 039.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState041 : (('s, 'r) _menhir_cell1_exp _menhir_cell0_DASH, 'r) _menhir_state
    (** State 041.
        Stack shape : exp DASH.
        Start symbol: <undetermined>. *)

  | MenhirState043 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 043.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState045 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 045.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState047 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 047.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState049 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 049.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState051 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 051.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState053 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 053.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState055 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 055.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState057 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 057.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState059 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 059.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState061 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 061.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState063 : (('s, 'r) _menhir_cell1_exp, 'r) _menhir_state
    (** State 063.
        Stack shape : exp.
        Start symbol: <undetermined>. *)

  | MenhirState065 : (('s, 'r) _menhir_cell1_expauxaux, 'r) _menhir_state
    (** State 065.
        Stack shape : expauxaux.
        Start symbol: <undetermined>. *)

  | MenhirState080 : ('s, _menhir_box_prog) _menhir_state
    (** State 080.
        Stack shape : .
        Start symbol: prog. *)

  | MenhirState083 : (('s, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_state
    (** State 083.
        Stack shape : TVOID IDENT LPAREN.
        Start symbol: prog. *)

  | MenhirState085 : (('s, _menhir_box_prog) _menhir_cell1_ty, _menhir_box_prog) _menhir_state
    (** State 085.
        Stack shape : ty.
        Start symbol: prog. *)

  | MenhirState088 : (('s, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT, _menhir_box_prog) _menhir_state
    (** State 088.
        Stack shape : ty IDENT.
        Start symbol: prog. *)

  | MenhirState093 : ((('s, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN, _menhir_box_prog) _menhir_state
    (** State 093.
        Stack shape : TVOID IDENT LPAREN arglist RPAREN.
        Start symbol: prog. *)

  | MenhirState094 : (('s, 'r) _menhir_cell1_LBRACE, 'r) _menhir_state
    (** State 094.
        Stack shape : LBRACE.
        Start symbol: <undetermined>. *)

  | MenhirState096 : (('s, 'r) _menhir_cell1_WHILE _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 096.
        Stack shape : WHILE LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState098 : ((('s, 'r) _menhir_cell1_WHILE _menhir_cell0_LPAREN, 'r) _menhir_cell1_exp _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 098.
        Stack shape : WHILE LPAREN exp RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState102 : (('s, 'r) _menhir_cell1_VAR _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 102.
        Stack shape : VAR IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState104 : (('s, 'r) _menhir_cell1_RETURN, 'r) _menhir_state
    (** State 104.
        Stack shape : RETURN.
        Start symbol: <undetermined>. *)

  | MenhirState109 : (('s, 'r) _menhir_cell1_IF _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 109.
        Stack shape : IF LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState111 : ((('s, 'r) _menhir_cell1_IF _menhir_cell0_LPAREN, 'r) _menhir_cell1_exp _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 111.
        Stack shape : IF LPAREN exp RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState113 : (((('s, 'r) _menhir_cell1_IF _menhir_cell0_LPAREN, 'r) _menhir_cell1_exp _menhir_cell0_RPAREN, 'r) _menhir_cell1_block, 'r) _menhir_state
    (** State 113.
        Stack shape : IF LPAREN exp RPAREN block.
        Start symbol: <undetermined>. *)

  | MenhirState119 : (('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 119.
        Stack shape : FOR LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState121 : (('s, 'r) _menhir_cell1_vdecl, 'r) _menhir_state
    (** State 121.
        Stack shape : vdecl.
        Start symbol: <undetermined>. *)

  | MenhirState125 : ((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, 'r) _menhir_state
    (** State 125.
        Stack shape : FOR LPAREN loption(separated_nonempty_list(COMMA,vdecl)) SEMI.
        Start symbol: <undetermined>. *)

  | MenhirState126 : (((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, 'r) _menhir_cell1_SEMI, 'r) _menhir_state
    (** State 126.
        Stack shape : FOR LPAREN loption(separated_nonempty_list(COMMA,vdecl)) SEMI SEMI.
        Start symbol: <undetermined>. *)

  | MenhirState127 : ((((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, 'r) _menhir_cell1_SEMI, 'r) _menhir_cell1_RPAREN, 'r) _menhir_state
    (** State 127.
        Stack shape : FOR LPAREN loption(separated_nonempty_list(COMMA,vdecl)) SEMI SEMI RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState132 : ((((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, 'r) _menhir_cell1_SEMI, 'r) _menhir_cell1_stmt _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 132.
        Stack shape : FOR LPAREN loption(separated_nonempty_list(COMMA,vdecl)) SEMI SEMI stmt RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState135 : (('s, 'r) _menhir_cell1_lhs, 'r) _menhir_state
    (** State 135.
        Stack shape : lhs.
        Start symbol: <undetermined>. *)

  | MenhirState140 : (('s, 'r) _menhir_cell1_expauxaux _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 140.
        Stack shape : expauxaux LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState144 : (('s, 'r) _menhir_cell1_expauxaux, 'r) _menhir_state
    (** State 144.
        Stack shape : expauxaux.
        Start symbol: <undetermined>. *)

  | MenhirState148 : (((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, 'r) _menhir_cell1_exp _menhir_cell0_SEMI, 'r) _menhir_state
    (** State 148.
        Stack shape : FOR LPAREN loption(separated_nonempty_list(COMMA,vdecl)) SEMI exp SEMI.
        Start symbol: <undetermined>. *)

  | MenhirState149 : ((((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, 'r) _menhir_cell1_exp _menhir_cell0_SEMI, 'r) _menhir_cell1_RPAREN, 'r) _menhir_state
    (** State 149.
        Stack shape : FOR LPAREN loption(separated_nonempty_list(COMMA,vdecl)) SEMI exp SEMI RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState152 : ((((('s, 'r) _menhir_cell1_FOR _menhir_cell0_LPAREN, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, 'r) _menhir_cell1_exp _menhir_cell0_SEMI, 'r) _menhir_cell1_stmt _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 152.
        Stack shape : FOR LPAREN loption(separated_nonempty_list(COMMA,vdecl)) SEMI exp SEMI stmt RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState154 : (('s, 'r) _menhir_cell1_stmt, 'r) _menhir_state
    (** State 154.
        Stack shape : stmt.
        Start symbol: <undetermined>. *)

  | MenhirState161 : (('s, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT, _menhir_box_prog) _menhir_state
    (** State 161.
        Stack shape : GLOBAL IDENT.
        Start symbol: prog. *)

  | MenhirState166 : ((('s, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_state
    (** State 166.
        Stack shape : GLOBAL IDENT NEW.
        Start symbol: prog. *)

  | MenhirState168 : (((('s, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_cell1_ty, _menhir_box_prog) _menhir_state
    (** State 168.
        Stack shape : GLOBAL IDENT NEW ty.
        Start symbol: prog. *)

  | MenhirState170 : ((((('s, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_cell1_ty, _menhir_box_prog) _menhir_cell1_RBRACKET, _menhir_box_prog) _menhir_state
    (** State 170.
        Stack shape : GLOBAL IDENT NEW ty RBRACKET.
        Start symbol: prog. *)

  | MenhirState176 : ((('s, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT, _menhir_box_prog) _menhir_cell1_ty, _menhir_box_prog) _menhir_state
    (** State 176.
        Stack shape : GLOBAL IDENT ty.
        Start symbol: prog. *)

  | MenhirState183 : (('s, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_state
    (** State 183.
        Stack shape : ty IDENT LPAREN.
        Start symbol: prog. *)

  | MenhirState185 : ((('s, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN, _menhir_box_prog) _menhir_state
    (** State 185.
        Stack shape : ty IDENT LPAREN arglist RPAREN.
        Start symbol: prog. *)

  | MenhirState190 : (('s, _menhir_box_prog) _menhir_cell1_decl, _menhir_box_prog) _menhir_state
    (** State 190.
        Stack shape : decl.
        Start symbol: prog. *)

  | MenhirState192 : ('s, _menhir_box_stmt_top) _menhir_state
    (** State 192.
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

and ('s, 'r) _menhir_cell1_expauxaux = 
  | MenhirCell1_expauxaux of 's * ('s, 'r) _menhir_state * (Ast.exp Ast.node) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_lhs = 
  | MenhirCell1_lhs of 's * ('s, 'r) _menhir_state * (Ast.exp Ast.node) * Lexing.position

and ('s, 'r) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ = 
  | MenhirCell1_loption_separated_nonempty_list_COMMA_vdecl__ of 's * ('s, 'r) _menhir_state * (Ast.vdecl list)

and ('s, 'r) _menhir_cell1_stmt = 
  | MenhirCell1_stmt of 's * ('s, 'r) _menhir_state * (Ast.stmt Ast.node)

and ('s, 'r) _menhir_cell1_ty = 
  | MenhirCell1_ty of 's * ('s, 'r) _menhir_state * (Ast.ty) * Lexing.position

and ('s, 'r) _menhir_cell1_vdecl = 
  | MenhirCell1_vdecl of 's * ('s, 'r) _menhir_state * (Ast.vdecl) * Lexing.position

and ('s, 'r) _menhir_cell1_BANG = 
  | MenhirCell1_BANG of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_DASH = 
  | MenhirCell1_DASH of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_DASH = 
  | MenhirCell0_DASH of 's * Lexing.position

and ('s, 'r) _menhir_cell1_FOR = 
  | MenhirCell1_FOR of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_GLOBAL = 
  | MenhirCell1_GLOBAL of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_IDENT = 
  | MenhirCell0_IDENT of 's * (
# 14 "parser.mly"
       (string)
# 451 "parser.ml"
) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_LBRACE = 
  | MenhirCell1_LBRACE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAREN = 
  | MenhirCell1_LPAREN of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_LPAREN = 
  | MenhirCell0_LPAREN of 's * Lexing.position

and ('s, 'r) _menhir_cell1_NEW = 
  | MenhirCell1_NEW of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_RBRACKET = 
  | MenhirCell1_RBRACKET of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_RETURN = 
  | MenhirCell1_RETURN of 's * ('s, 'r) _menhir_state * Lexing.position

and ('s, 'r) _menhir_cell1_RPAREN = 
  | MenhirCell1_RPAREN of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_RPAREN = 
  | MenhirCell0_RPAREN of 's * Lexing.position

and ('s, 'r) _menhir_cell1_SEMI = 
  | MenhirCell1_SEMI of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_SEMI = 
  | MenhirCell0_SEMI of 's * Lexing.position

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
# 513 "parser.ml"
     in
    (
# 107 "parser.mly"
                                            ( l )
# 518 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_04 =
  fun stmts ->
    (
# 207 "parser.mly"
                                   ( stmts )
# 526 "parser.ml"
     : (Ast.block))

let _menhir_action_05 =
  fun _endpos__5_ _startpos__1_ init name ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 102 "parser.mly"
    ( Gvdecl (loc _startpos _endpos { name; init }) )
# 536 "parser.ml"
     : (Ast.decl))

let _menhir_action_06 =
  fun _endpos_body_ _startpos__1_ args body fname ->
    let frtyp = 
# 115 "parser.mly"
           ( RetVoid )
# 544 "parser.ml"
     in
    let _startpos_frtyp_ = _startpos__1_ in
    let _endpos = _endpos_body_ in
    let _startpos = _startpos_frtyp_ in
    (
# 104 "parser.mly"
    ( Gfdecl (loc _startpos _endpos { frtyp; fname; args; body }) )
# 552 "parser.ml"
     : (Ast.decl))

let _menhir_action_07 =
  fun _endpos_body_ _startpos_t_ args body fname t ->
    let frtyp = 
# 116 "parser.mly"
           ( RetVal t )
# 560 "parser.ml"
     in
    let _startpos_frtyp_ = _startpos_t_ in
    let _endpos = _endpos_body_ in
    let _startpos = _startpos_frtyp_ in
    (
# 104 "parser.mly"
    ( Gfdecl (loc _startpos _endpos { frtyp; fname; args; body }) )
# 568 "parser.ml"
     : (Ast.decl))

let _menhir_action_08 =
  fun () ->
    (
# 214 "parser.mly"
                      ( [] )
# 576 "parser.ml"
     : (Ast.block))

let _menhir_action_09 =
  fun b ->
    (
# 215 "parser.mly"
                      ( b )
# 584 "parser.ml"
     : (Ast.block))

let _menhir_action_10 =
  fun ifs ->
    (
# 216 "parser.mly"
                      ( [ ifs ] )
# 592 "parser.ml"
     : (Ast.block))

let _menhir_action_11 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let op = 
# 127 "parser.mly"
            (Mul)
# 600 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 162 "parser.mly"
                          ( loc _startpos _endpos @@ Bop (op, e1, e2) )
# 607 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_12 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let op = 
# 128 "parser.mly"
           ( Add )
# 615 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 162 "parser.mly"
                          ( loc _startpos _endpos @@ Bop (op, e1, e2) )
# 622 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_13 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let op = 
# 129 "parser.mly"
           ( Sub )
# 630 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 162 "parser.mly"
                          ( loc _startpos _endpos @@ Bop (op, e1, e2) )
# 637 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_14 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let op = 
# 130 "parser.mly"
            ( Shl )
# 645 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 162 "parser.mly"
                          ( loc _startpos _endpos @@ Bop (op, e1, e2) )
# 652 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_15 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let op = 
# 131 "parser.mly"
            ( Shr )
# 660 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 162 "parser.mly"
                          ( loc _startpos _endpos @@ Bop (op, e1, e2) )
# 667 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_16 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let op = 
# 132 "parser.mly"
            ( Sar )
# 675 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 162 "parser.mly"
                          ( loc _startpos _endpos @@ Bop (op, e1, e2) )
# 682 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_17 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let op = 
# 133 "parser.mly"
            ( Lt )
# 690 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 162 "parser.mly"
                          ( loc _startpos _endpos @@ Bop (op, e1, e2) )
# 697 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_18 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let op = 
# 134 "parser.mly"
            ( Lte )
# 705 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 162 "parser.mly"
                          ( loc _startpos _endpos @@ Bop (op, e1, e2) )
# 712 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_19 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let op = 
# 135 "parser.mly"
            ( Gt )
# 720 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 162 "parser.mly"
                          ( loc _startpos _endpos @@ Bop (op, e1, e2) )
# 727 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_20 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let op = 
# 136 "parser.mly"
            ( Gte )
# 735 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 162 "parser.mly"
                          ( loc _startpos _endpos @@ Bop (op, e1, e2) )
# 742 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_21 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let op = 
# 137 "parser.mly"
           ( Eq )
# 750 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 162 "parser.mly"
                          ( loc _startpos _endpos @@ Bop (op, e1, e2) )
# 757 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_22 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let op = 
# 138 "parser.mly"
            ( Neq )
# 765 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 162 "parser.mly"
                          ( loc _startpos _endpos @@ Bop (op, e1, e2) )
# 772 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_23 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let op = 
# 139 "parser.mly"
               ( And )
# 780 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 162 "parser.mly"
                          ( loc _startpos _endpos @@ Bop (op, e1, e2) )
# 787 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_24 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let op = 
# 140 "parser.mly"
               ( Or )
# 795 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 162 "parser.mly"
                          ( loc _startpos _endpos @@ Bop (op, e1, e2) )
# 802 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_25 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let op = 
# 141 "parser.mly"
              ( IAnd )
# 810 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 162 "parser.mly"
                          ( loc _startpos _endpos @@ Bop (op, e1, e2) )
# 817 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_26 =
  fun _endpos_e2_ _startpos_e1_ e1 e2 ->
    let op = 
# 142 "parser.mly"
              ( IOr )
# 825 "parser.ml"
     in
    let _endpos = _endpos_e2_ in
    let _startpos = _startpos_e1_ in
    (
# 162 "parser.mly"
                          ( loc _startpos _endpos @@ Bop (op, e1, e2) )
# 832 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_27 =
  fun e ->
    (
# 163 "parser.mly"
             ( e )
# 840 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_28 =
  fun e ->
    (
# 92 "parser.mly"
              ( e )
# 848 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_29 =
  fun _endpos_e_ _startpos__1_ e ->
    let u = 
# 145 "parser.mly"
          ( Neg )
# 856 "parser.ml"
     in
    let _startpos_u_ = _startpos__1_ in
    let _endpos = _endpos_e_ in
    let _startpos = _startpos_u_ in
    (
# 165 "parser.mly"
                    ( loc _startpos _endpos @@ Uop (u, e))
# 864 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_30 =
  fun _endpos_e_ _startpos__1_ e ->
    let u = 
# 146 "parser.mly"
          ( Lognot )
# 872 "parser.ml"
     in
    let _startpos_u_ = _startpos__1_ in
    let _endpos = _endpos_e_ in
    let _startpos = _startpos_u_ in
    (
# 165 "parser.mly"
                    ( loc _startpos _endpos @@ Uop (u, e))
# 880 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_31 =
  fun _endpos_e_ _startpos__1_ e ->
    let u = 
# 147 "parser.mly"
          ( Bitnot )
# 888 "parser.ml"
     in
    let _startpos_u_ = _startpos__1_ in
    let _endpos = _endpos_e_ in
    let _startpos = _startpos_u_ in
    (
# 165 "parser.mly"
                    ( loc _startpos _endpos @@ Uop (u, e))
# 896 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_32 =
  fun e ->
    (
# 166 "parser.mly"
                ( e )
# 904 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_33 =
  fun _endpos__4_ _startpos_e_ e n ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    (
# 169 "parser.mly"
                        ( loc _startpos _endpos @@ Index (e, n) )
# 914 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_34 =
  fun _endpos__4_ _startpos_e_ e xs ->
    let xs = 
# 229 "<standard.mly>"
    ( xs )
# 922 "parser.ml"
     in
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    (
# 171 "parser.mly"
                        ( loc _startpos _endpos @@ Call (e,xs))
# 929 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_35 =
  fun _endpos_i_ _startpos_i_ i ->
    let _endpos = _endpos_i_ in
    let _startpos = _startpos_i_ in
    (
# 172 "parser.mly"
                        ( loc _startpos _endpos @@ CInt i )
# 939 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_36 =
  fun _endpos__2_ _startpos__1_ ->
    let t = 
# 119 "parser.mly"
            ( RString )
# 947 "parser.ml"
     in
    let _startpos_t_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ CNull t )
# 955 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_37 =
  fun _endpos__2_ _startpos_t_ t ->
    let t = 
# 120 "parser.mly"
                           ( RArray t )
# 963 "parser.ml"
     in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 173 "parser.mly"
                        ( loc _startpos _endpos @@ CNull t )
# 970 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_38 =
  fun _endpos_id_ _startpos_id_ id ->
    let _endpos = _endpos_id_ in
    let _startpos = _startpos_id_ in
    (
# 174 "parser.mly"
                        ( loc _startpos _endpos @@ Id id )
# 980 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_39 =
  fun _endpos__1_ _startpos__1_ ->
    let b = 
# 123 "parser.mly"
          ( true )
# 988 "parser.ml"
     in
    let (_endpos_b_, _startpos_b_) = (_endpos__1_, _startpos__1_) in
    let _endpos = _endpos_b_ in
    let _startpos = _startpos_b_ in
    (
# 175 "parser.mly"
                        ( loc _startpos _endpos @@ CBool b )
# 996 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_40 =
  fun _endpos__1_ _startpos__1_ ->
    let b = 
# 124 "parser.mly"
          ( false )
# 1004 "parser.ml"
     in
    let (_endpos_b_, _startpos_b_) = (_endpos__1_, _startpos__1_) in
    let _endpos = _endpos_b_ in
    let _startpos = _startpos_b_ in
    (
# 175 "parser.mly"
                        ( loc _startpos _endpos @@ CBool b )
# 1012 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_41 =
  fun _endpos_s_ _startpos_s_ s ->
    let _endpos = _endpos_s_ in
    let _startpos = _startpos_s_ in
    (
# 176 "parser.mly"
                        ( loc _startpos _endpos @@ CStr s )
# 1022 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_42 =
  fun _endpos__7_ _startpos__1_ t xs ->
    let xs = 
# 229 "<standard.mly>"
    ( xs )
# 1030 "parser.ml"
     in
    let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    (
# 177 "parser.mly"
                                                                            ( loc _startpos _endpos @@ CArr (t,xs) )
# 1037 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_43 =
  fun _endpos__5_ _startpos__1_ e t ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 178 "parser.mly"
                                      (
    if t=TInt || t=TBool then
      loc _startpos _endpos @@ NewArr (t,e)
    else
      failwith "init failed expauxaux"
  )
# 1052 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_44 =
  fun e ->
    (
# 184 "parser.mly"
                        ( e )
# 1060 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_45 =
  fun _endpos__2_ _startpos__1_ ->
    let t = 
# 119 "parser.mly"
            ( RString )
# 1068 "parser.ml"
     in
    let _startpos_t_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 150 "parser.mly"
                 ( loc _startpos _endpos @@ CNull t )
# 1076 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_46 =
  fun _endpos__2_ _startpos_t_ t ->
    let t = 
# 120 "parser.mly"
                           ( RArray t )
# 1084 "parser.ml"
     in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_t_ in
    (
# 150 "parser.mly"
                 ( loc _startpos _endpos @@ CNull t )
# 1091 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_47 =
  fun _endpos_i_ _startpos_i_ i ->
    let _endpos = _endpos_i_ in
    let _startpos = _startpos_i_ in
    (
# 151 "parser.mly"
               ( loc _startpos _endpos @@ CInt i )
# 1101 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_48 =
  fun _endpos__1_ _startpos__1_ ->
    let b = 
# 123 "parser.mly"
          ( true )
# 1109 "parser.ml"
     in
    let (_endpos_b_, _startpos_b_) = (_endpos__1_, _startpos__1_) in
    let _endpos = _endpos_b_ in
    let _startpos = _startpos_b_ in
    (
# 152 "parser.mly"
                ( loc _startpos _endpos @@ CBool b )
# 1117 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_49 =
  fun _endpos__1_ _startpos__1_ ->
    let b = 
# 124 "parser.mly"
          ( false )
# 1125 "parser.ml"
     in
    let (_endpos_b_, _startpos_b_) = (_endpos__1_, _startpos__1_) in
    let _endpos = _endpos_b_ in
    let _startpos = _startpos_b_ in
    (
# 152 "parser.mly"
                ( loc _startpos _endpos @@ CBool b )
# 1133 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_50 =
  fun _endpos_s_ _startpos_s_ s ->
    let _endpos = _endpos_s_ in
    let _startpos = _startpos_s_ in
    (
# 153 "parser.mly"
                ( loc _startpos _endpos @@ CStr s )
# 1143 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_51 =
  fun _endpos__7_ _startpos__1_ t xs ->
    let xs = 
# 229 "<standard.mly>"
    ( xs )
# 1151 "parser.ml"
     in
    let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    (
# 154 "parser.mly"
                                                                           ( loc _startpos _endpos @@ CArr (t, xs))
# 1158 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_52 =
  fun _endpos_b2_ _startpos__1_ b1 b2 e ->
    let _endpos = _endpos_b2_ in
    let _startpos = _startpos__1_ in
    (
# 211 "parser.mly"
    ( loc _startpos _endpos @@ If(e,b1,b2) )
# 1168 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_53 =
  fun _endpos_id_ _startpos_id_ id ->
    let _endpos = _endpos_id_ in
    let _startpos = _startpos_id_ in
    (
# 157 "parser.mly"
                        ( loc _startpos _endpos @@ Id id )
# 1178 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_54 =
  fun _endpos__4_ _startpos_e_ e i ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_e_ in
    (
# 159 "parser.mly"
                        ( loc _startpos _endpos @@ Index (e, i) )
# 1188 "parser.ml"
     : (Ast.exp Ast.node))

let _menhir_action_55 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1196 "parser.ml"
     : (Ast.prog))

let _menhir_action_56 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1204 "parser.ml"
     : (Ast.prog))

let _menhir_action_57 =
  fun () ->
    (
# 208 "<standard.mly>"
    ( [] )
# 1212 "parser.ml"
     : (Ast.block))

let _menhir_action_58 =
  fun x xs ->
    (
# 210 "<standard.mly>"
    ( x :: xs )
# 1220 "parser.ml"
     : (Ast.block))

let _menhir_action_59 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 1228 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_60 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 1236 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_61 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 1244 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_62 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 1252 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_63 =
  fun () ->
    (
# 139 "<standard.mly>"
    ( [] )
# 1260 "parser.ml"
     : (Ast.vdecl list))

let _menhir_action_64 =
  fun x ->
    (
# 141 "<standard.mly>"
    ( x )
# 1268 "parser.ml"
     : (Ast.vdecl list))

let _menhir_action_65 =
  fun p ->
    (
# 98 "parser.mly"
                      ( p )
# 1276 "parser.ml"
     : (Ast.prog))

let _menhir_action_66 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1284 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_67 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1292 "parser.ml"
     : (Ast.exp Ast.node list))

let _menhir_action_68 =
  fun x y ->
    let x = 
# 164 "<standard.mly>"
    ( (x, y) )
# 1300 "parser.ml"
     in
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1305 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_69 =
  fun x xs y ->
    let x = 
# 164 "<standard.mly>"
    ( (x, y) )
# 1313 "parser.ml"
     in
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1318 "parser.ml"
     : ((Ast.ty * Ast.id) list))

let _menhir_action_70 =
  fun x ->
    (
# 238 "<standard.mly>"
    ( [ x ] )
# 1326 "parser.ml"
     : (Ast.vdecl list))

let _menhir_action_71 =
  fun x xs ->
    (
# 240 "<standard.mly>"
    ( x :: xs )
# 1334 "parser.ml"
     : (Ast.vdecl list))

let _menhir_action_72 =
  fun _endpos__2_ _startpos_d_ d ->
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_d_ in
    (
# 192 "parser.mly"
                        ( loc _startpos _endpos @@ Decl(d) )
# 1344 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_73 =
  fun _endpos__4_ _startpos_p_ e p ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos_p_ in
    (
# 193 "parser.mly"
                        ( loc _startpos _endpos @@ Assn(p,e) )
# 1354 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_74 =
  fun _endpos__5_ _startpos_e_ e xs ->
    let xs = 
# 229 "<standard.mly>"
    ( xs )
# 1362 "parser.ml"
     in
    let _endpos = _endpos__5_ in
    let _startpos = _startpos_e_ in
    (
# 195 "parser.mly"
                        ( loc _startpos _endpos @@ SCall (e, xs) )
# 1369 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_75 =
  fun ifs ->
    (
# 196 "parser.mly"
                        ( ifs )
# 1377 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_76 =
  fun _endpos__2_ _startpos__1_ ->
    let _endpos = _endpos__2_ in
    let _startpos = _startpos__1_ in
    (
# 197 "parser.mly"
                        ( loc _startpos _endpos @@ Ret(None) )
# 1387 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_77 =
  fun _endpos__3_ _startpos__1_ e ->
    let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    (
# 198 "parser.mly"
                        ( loc _startpos _endpos @@ Ret(Some e) )
# 1397 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_78 =
  fun _endpos_b_ _startpos__1_ b e ->
    let _endpos = _endpos_b_ in
    let _startpos = _startpos__1_ in
    (
# 200 "parser.mly"
                        ( loc _startpos _endpos @@ While(e, b) )
# 1407 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_79 =
  fun _endpos_b_ _startpos__1_ b xs ->
    let d = 
# 229 "<standard.mly>"
    ( xs )
# 1415 "parser.ml"
     in
    let _endpos = _endpos_b_ in
    let _startpos = _startpos__1_ in
    (
# 201 "parser.mly"
                                                                          ( loc _startpos _endpos @@ For(d, None, None, b) )
# 1422 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_80 =
  fun _endpos_b_ _startpos__1_ b s xs ->
    let d = 
# 229 "<standard.mly>"
    ( xs )
# 1430 "parser.ml"
     in
    let _endpos = _endpos_b_ in
    let _startpos = _startpos__1_ in
    (
# 202 "parser.mly"
                                                                               ( loc _startpos _endpos @@ For(d, None, Some s, b) )
# 1437 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_81 =
  fun _endpos_b_ _startpos__1_ b e xs ->
    let d = 
# 229 "<standard.mly>"
    ( xs )
# 1445 "parser.ml"
     in
    let _endpos = _endpos_b_ in
    let _startpos = _startpos__1_ in
    (
# 203 "parser.mly"
                                                                              ( loc _startpos _endpos @@ For(d, Some e, None, b) )
# 1452 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_82 =
  fun _endpos_b_ _startpos__1_ b e s xs ->
    let d = 
# 229 "<standard.mly>"
    ( xs )
# 1460 "parser.ml"
     in
    let _endpos = _endpos_b_ in
    let _startpos = _startpos__1_ in
    (
# 204 "parser.mly"
                                                                                    ( loc _startpos _endpos @@ For(d, Some e, Some s, b) )
# 1467 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_83 =
  fun s ->
    (
# 95 "parser.mly"
               ( s )
# 1475 "parser.ml"
     : (Ast.stmt Ast.node))

let _menhir_action_84 =
  fun () ->
    (
# 110 "parser.mly"
           ( TInt )
# 1483 "parser.ml"
     : (Ast.ty))

let _menhir_action_85 =
  fun () ->
    (
# 111 "parser.mly"
            ( TBool )
# 1491 "parser.ml"
     : (Ast.ty))

let _menhir_action_86 =
  fun () ->
    let r = 
# 119 "parser.mly"
            ( RString )
# 1499 "parser.ml"
     in
    (
# 112 "parser.mly"
           ( TRef r )
# 1504 "parser.ml"
     : (Ast.ty))

let _menhir_action_87 =
  fun t ->
    let r = 
# 120 "parser.mly"
                           ( RArray t )
# 1512 "parser.ml"
     in
    (
# 112 "parser.mly"
           ( TRef r )
# 1517 "parser.ml"
     : (Ast.ty))

let _menhir_action_88 =
  fun id init ->
    (
# 189 "parser.mly"
                             ( (id, init) )
# 1525 "parser.ml"
     : (Ast.vdecl))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | BANG ->
        "BANG"
    | BANGEQ ->
        "BANGEQ"
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
    | FALSE ->
        "FALSE"
    | FOR ->
        "FOR"
    | GLOBAL ->
        "GLOBAL"
    | GT ->
        "GT"
    | GTEQ ->
        "GTEQ"
    | GTGT ->
        "GTGT"
    | GTGTGT ->
        "GTGTGT"
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
    | LOGAND ->
        "LOGAND"
    | LOGANDI ->
        "LOGANDI"
    | LPAREN ->
        "LPAREN"
    | LT ->
        "LT"
    | LTEQ ->
        "LTEQ"
    | LTLT ->
        "LTLT"
    | NEW ->
        "NEW"
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
    | TBOOL ->
        "TBOOL"
    | TILDE ->
        "TILDE"
    | TINT ->
        "TINT"
    | TRUE ->
        "TRUE"
    | TSTRING ->
        "TSTRING"
    | TVOID ->
        "TVOID"
    | VAR ->
        "VAR"
    | VERTBAR ->
        "VERTBAR"
    | VERTBARI ->
        "VERTBARI"
    | WHILE ->
        "WHILE"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37-39"]
  
  let rec _menhir_run_194 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_stmt_top =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let s = _v in
          let _v = _menhir_action_83 s in
          MenhirBox_stmt_top _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_188 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_prog =
    fun _menhir_stack _v ->
      let p = _v in
      let _v = _menhir_action_65 p in
      MenhirBox_prog _v
  
  let rec _menhir_run_191 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_decl -> _ -> _menhir_box_prog =
    fun _menhir_stack _v ->
      let MenhirCell1_decl (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_56 x xs in
      _menhir_goto_list_decl_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_decl_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState190 ->
          _menhir_run_191 _menhir_stack _v
      | MenhirState080 ->
          _menhir_run_188 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_138_spec_192 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_stmt_top =
    fun _menhir_stack _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_75 ifs in
      _menhir_run_194 _menhir_stack _v _tok
  
  let rec _menhir_run_001 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NULL ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _endpos__2_) = (_startpos, _endpos) in
          let _v = _menhir_action_36 _endpos__2_ _startpos__1_ in
          _menhir_goto_expauxaux _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__2_ _startpos__1_ _v _menhir_s _tok
      | LBRACKET ->
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_86 () in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_expauxaux : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState192 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState094 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState148 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState126 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState170 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState125 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState144 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState140 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState109 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState104 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState096 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState005 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState011 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState013 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState014 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState018 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState041 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState035 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState033 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState025 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_139 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expauxaux (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_2, _startpos_1) in
              let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState140 _tok
          | TINT ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_4 in
              let _v = _menhir_action_84 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState140 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
          | TBOOL ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_6 in
              let _v = _menhir_action_85 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState140 _tok
          | STRING _v_8 ->
              let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos_10, _startpos_9, _v_8) in
              let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState140 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
          | INT _v_12 ->
              let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_14 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_14, _startpos_13, _v_12) in
              let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState140 _tok
          | IDENT _v_16 ->
              let _startpos_17 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_18 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos_18, _startpos_17, _v_16) in
              let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState140 _tok
          | FALSE ->
              let _startpos_20 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_21 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_21, _startpos_20) in
              let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState140 _tok
          | DASH ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
          | BANG ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState140
          | RPAREN ->
              let _v = _menhir_action_59 () in
              _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | LBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState144
          | TRUE ->
              let _startpos_24 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_25 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_25, _startpos_24) in
              let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState144 _tok
          | TINT ->
              let _startpos_27 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_27 in
              let _v = _menhir_action_84 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState144 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState144
          | TBOOL ->
              let _startpos_29 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_29 in
              let _v = _menhir_action_85 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState144 _tok
          | STRING _v_31 ->
              let _startpos_32 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_33 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos_33, _startpos_32, _v_31) in
              let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState144 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState144
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState144
          | INT _v_35 ->
              let _startpos_36 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_37 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_37, _startpos_36, _v_35) in
              let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState144 _tok
          | IDENT _v_39 ->
              let _startpos_40 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_41 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos_41, _startpos_40, _v_39) in
              let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState144 _tok
          | FALSE ->
              let _startpos_43 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_44 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_44, _startpos_43) in
              let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState144 _tok
          | DASH ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState144
          | BANG ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState144
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_024 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_expauxaux (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_2, _startpos_1) in
              let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState025 _tok
          | TINT ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_4 in
              let _v = _menhir_action_84 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState025 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
          | TBOOL ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_6 in
              let _v = _menhir_action_85 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState025 _tok
          | STRING _v_8 ->
              let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos_10, _startpos_9, _v_8) in
              let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState025 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
          | INT _v_12 ->
              let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_14 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_14, _startpos_13, _v_12) in
              let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState025 _tok
          | IDENT _v_16 ->
              let _startpos_17 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_18 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos_18, _startpos_17, _v_16) in
              let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState025 _tok
          | FALSE ->
              let _startpos_20 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_21 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_21, _startpos_20) in
              let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState025 _tok
          | DASH ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
          | BANG ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState025
          | RPAREN ->
              let _v = _menhir_action_59 () in
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_expauxaux (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
          | TRUE ->
              let _startpos_24 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_25 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_25, _startpos_24) in
              let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState065 _tok
          | TINT ->
              let _startpos_27 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_27 in
              let _v = _menhir_action_84 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState065 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
          | TBOOL ->
              let _startpos_29 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_29 in
              let _v = _menhir_action_85 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState065 _tok
          | STRING _v_31 ->
              let _startpos_32 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_33 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos_33, _startpos_32, _v_31) in
              let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState065 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
          | INT _v_35 ->
              let _startpos_36 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_37 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_37, _startpos_36, _v_35) in
              let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState065 _tok
          | IDENT _v_39 ->
              let _startpos_40 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_41 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos_41, _startpos_40, _v_39) in
              let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState065 _tok
          | FALSE ->
              let _startpos_43 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_44 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_44, _startpos_43) in
              let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState065 _tok
          | DASH ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
          | BANG ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState065
          | _ ->
              _eRR ())
      | BANGEQ | COMMA | DASH | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | LOGAND | LOGANDI | LT | LTEQ | LTLT | PLUS | RBRACE | RBRACKET | RPAREN | SEMI | STAR | VERTBAR | VERTBARI ->
          let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_32 e in
          _menhir_goto_expaux _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_020 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
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
                  let _v = _menhir_action_37 _endpos__2_ _startpos_t_ t in
                  _menhir_goto_expauxaux _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__2_ _startpos_t_ _v _menhir_s _tok
              | LBRACKET ->
                  let (_startpos_t_, t) = (_startpos, _v) in
                  let _v = _menhir_action_87 t in
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
      | MenhirState190 ->
          _menhir_run_181 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState080 ->
          _menhir_run_181 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState161 ->
          _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState166 ->
          _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState183 ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState192 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState170 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState094 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState148 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState125 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState144 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState140 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState126 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState109 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState104 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState096 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState005 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState011 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState013 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState014 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState018 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState041 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState035 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState033 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState025 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState019 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_181 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
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
                  let _v = _menhir_action_86 () in
                  _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState183 _tok
              | TINT ->
                  let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_5 in
                  let _v = _menhir_action_84 () in
                  _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState183 _tok
              | TBOOL ->
                  let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_7 in
                  let _v = _menhir_action_85 () in
                  _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState183 _tok
              | RPAREN ->
                  let _v = _menhir_action_61 () in
                  _menhir_run_091_spec_183 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_085 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_ty (_menhir_stack, _menhir_s, t, _startpos_t_) = _menhir_stack in
          let _v = _menhir_action_87 t in
          _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_084 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer
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
                  let _v = _menhir_action_86 () in
                  _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState088 _tok
              | TINT ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_84 () in
                  _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState088 _tok
              | TBOOL ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_6 in
                  let _v = _menhir_action_85 () in
                  _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState088 _tok
              | _ ->
                  _eRR ())
          | RPAREN ->
              let (x, y) = (_v, _v_0) in
              let _v = _menhir_action_68 x y in
              _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState183 ->
          _menhir_run_090_spec_183 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState083 ->
          _menhir_run_090_spec_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState088 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_090_spec_183 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_62 x in
      _menhir_run_091_spec_183 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_091_spec_183 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let xs = _v in
      let _v = _menhir_action_03 xs in
      let _menhir_s = MenhirState183 in
      let _menhir_stack = MenhirCell1_arglist (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
      | _ ->
          _eRR ()
  
  and _menhir_run_094 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | VAR ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState094 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState094 _tok
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState094 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState094 _tok
      | RETURN ->
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState094 _tok
      | IF ->
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | IDENT _v ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState094
      | FOR ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState094 _tok
      | RBRACE ->
          let _v = _menhir_action_57 () in
          _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_095 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
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
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
              let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState096 _tok
          | TINT ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_2 in
              let _v = _menhir_action_84 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState096 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | TBOOL ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_3 in
              let _v = _menhir_action_85 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState096 _tok
          | STRING _v ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_4, _v) in
              let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState096 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | INT _v ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_5, _v) in
              let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState096 _tok
          | IDENT _v ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_6, _v) in
              let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState096 _tok
          | FALSE ->
              let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_7) in
              let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState096 _tok
          | DASH ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | BANG ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_005 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_TILDE (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState005 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState005 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState005 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState005 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | INT _v ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState005 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState005 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState005 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
      | _ ->
          _eRR ()
  
  and _menhir_run_008 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_0 in
          let _v = _menhir_action_86 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState008 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_84 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState008 _tok
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_85 () in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState008 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_010 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_NEW as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
          | TRUE ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
              let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState011 _tok
          | TINT ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_2 in
              let _v = _menhir_action_84 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState011 _tok
          | TILDE ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
          | TBOOL ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_4 in
              let _v = _menhir_action_85 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState011 _tok
          | STRING _v_6 ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_7, _v_6) in
              let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState011 _tok
          | RBRACKET ->
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LBRACE ->
                  let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
                  let _menhir_stack = MenhirCell1_RBRACKET (_menhir_stack, MenhirState011, _endpos) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TSTRING ->
                      _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | TRUE ->
                      let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos__1_, _startpos__1_) = (_endpos_10, _startpos_9) in
                      let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
                      _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState013 _tok
                  | TINT ->
                      let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _startpos__1_ = _startpos_12 in
                      let _v = _menhir_action_84 () in
                      _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState013 _tok
                  | TILDE ->
                      _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | TBOOL ->
                      let _startpos_14 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _startpos__1_ = _startpos_14 in
                      let _v = _menhir_action_85 () in
                      _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState013 _tok
                  | STRING _v_16 ->
                      let _startpos_17 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_18 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos_s_, _startpos_s_, s) = (_endpos_18, _startpos_17, _v_16) in
                      let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
                      _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState013 _tok
                  | NEW ->
                      _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | LPAREN ->
                      _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | INT _v_20 ->
                      let _startpos_21 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_22 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos_i_, _startpos_i_, i) = (_endpos_22, _startpos_21, _v_20) in
                      let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
                      _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState013 _tok
                  | IDENT _v_24 ->
                      let _startpos_25 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_26 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos_id_, _startpos_id_, id) = (_endpos_26, _startpos_25, _v_24) in
                      let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
                      _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState013 _tok
                  | FALSE ->
                      let _startpos_28 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_29 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos__1_, _startpos__1_) = (_endpos_29, _startpos_28) in
                      let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
                      _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState013 _tok
                  | DASH ->
                      _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | BANG ->
                      _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
                  | RBRACE ->
                      let _v = _menhir_action_59 () in
                      _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | _ ->
                      _eRR ())
              | LBRACKET ->
                  let (_startpos_t_, t) = (_startpos, _v) in
                  let _v = _menhir_action_87 t in
                  _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | NEW ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
          | LPAREN ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
          | INT _v_32 ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _startpos_33 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_33, _v_32) in
              let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState011 _tok
          | IDENT _v_35 ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _startpos_36 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_36, _v_35) in
              let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState011 _tok
          | FALSE ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              let _startpos_38 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_38) in
              let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState011 _tok
          | DASH ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
          | BANG ->
              let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState011
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_014 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState014 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState014 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState014 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState014 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | INT _v ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState014 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState014 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState014 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState014
      | _ ->
          _eRR ()
  
  and _menhir_run_018 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_DASH (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState018 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState018 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState018 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState018 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | INT _v ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState018 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState018 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState018 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState018
      | _ ->
          _eRR ()
  
  and _menhir_run_019 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_BANG (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState019 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState019 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState019 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState019 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | INT _v ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState019 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState019 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState019 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState019
      | _ ->
          _eRR ()
  
  and _menhir_run_072 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_ty, ttv_result) _menhir_cell1_RBRACKET -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RBRACE ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_RBRACKET (_menhir_stack, _, _) = _menhir_stack in
          let MenhirCell1_ty (_menhir_stack, _, t, _) = _menhir_stack in
          let MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (xs, _endpos__7_) = (_v, _endpos) in
          let _v = _menhir_action_42 _endpos__7_ _startpos__1_ t xs in
          _menhir_goto_expauxaux _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__7_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_100 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
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
                  _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
              | TRUE ->
                  let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos_2, _startpos_1) in
                  let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
                  _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState102 _tok
              | TINT ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_84 () in
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState102 _tok
              | TILDE ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
              | TBOOL ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_6 in
                  let _v = _menhir_action_85 () in
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState102 _tok
              | STRING _v_8 ->
                  let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_s_, _startpos_s_, s) = (_endpos_10, _startpos_9, _v_8) in
                  let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
                  _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState102 _tok
              | NEW ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
              | LPAREN ->
                  _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
              | INT _v_12 ->
                  let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_14 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_i_, _startpos_i_, i) = (_endpos_14, _startpos_13, _v_12) in
                  let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
                  _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState102 _tok
              | IDENT _v_16 ->
                  let _startpos_17 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_18 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_id_, _startpos_id_, id) = (_endpos_18, _startpos_17, _v_16) in
                  let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
                  _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState102 _tok
              | FALSE ->
                  let _startpos_20 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_21 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos_21, _startpos_20) in
                  let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
                  _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState102 _tok
              | DASH ->
                  _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
              | BANG ->
                  _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_104 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | TRUE ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState104 _tok
      | TINT ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState104 _tok
      | TILDE ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | TBOOL ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState104 _tok
      | STRING _v ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState104 _tok
      | SEMI ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_startpos__1_, _endpos__2_) = (_startpos, _endpos) in
          let _v = _menhir_action_76 _endpos__2_ _startpos__1_ in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | NEW ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | LPAREN ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | INT _v ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState104 _tok
      | IDENT _v ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState104 _tok
      | FALSE ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState104 _tok
      | DASH ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | BANG ->
          let _menhir_stack = MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos) in
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | _ ->
          _eRR ()
  
  and _menhir_goto_stmt : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState192 ->
          _menhir_run_194 _menhir_stack _v _tok
      | MenhirState154 ->
          _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState094 ->
          _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState148 ->
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState126 ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_154 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState154
      | VAR ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState154
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState154
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState154 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState154 _tok
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState154 _tok
      | STRING _v_3 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v_3) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState154 _tok
      | RETURN ->
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState154
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState154
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState154
      | INT _v_5 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v_5) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState154 _tok
      | IF ->
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState154
      | IDENT _v_7 ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _v_7 MenhirState154
      | FOR ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState154
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState154 _tok
      | RBRACE ->
          let _v = _menhir_action_57 () in
          _menhir_run_155 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_108 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
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
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_1) in
              let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState109 _tok
          | TINT ->
              let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_2 in
              let _v = _menhir_action_84 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState109 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
          | TBOOL ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_3 in
              let _v = _menhir_action_85 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState109 _tok
          | STRING _v ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_4, _v) in
              let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState109 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
          | INT _v ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_5, _v) in
              let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState109 _tok
          | IDENT _v ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_6, _v) in
              let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState109 _tok
          | FALSE ->
              let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_7) in
              let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState109 _tok
          | DASH ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
          | BANG ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_117 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACKET | LPAREN ->
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_goto_expauxaux _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v _menhir_s _tok
      | EQ ->
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_53 _endpos_id_ _startpos_id_ id in
          _menhir_goto_lhs _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_id_ _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_lhs : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s ->
      let _menhir_stack = MenhirCell1_lhs (_menhir_stack, _menhir_s, _v, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState135 _tok
      | TINT ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState135 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | TBOOL ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_4 in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState135 _tok
      | STRING _v_6 ->
          let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_7, _v_6) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState135 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | INT _v_9 ->
          let _startpos_10 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_10, _v_9) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState135 _tok
      | IDENT _v_12 ->
          let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_13, _v_12) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState135 _tok
      | FALSE ->
          let _startpos_15 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_15) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState135 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | _ ->
          _eRR ()
  
  and _menhir_run_118 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_FOR (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR ->
              _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | SEMI ->
              let _v = _menhir_action_63 () in
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState119
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_124 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_loption_separated_nonempty_list_COMMA_vdecl__ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_SEMI (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_0, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState125 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState125 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState125 _tok
      | STRING _v_4 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_5 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos_5, _startpos, _v_4) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState125 _tok
      | SEMI ->
          let _endpos_7 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell1_SEMI (_menhir_stack, MenhirState125, _endpos_7) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
          | VAR ->
              _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
          | TRUE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_8 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_8, _startpos) in
              let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState126 _tok
          | TINT ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_84 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState126 _tok
          | TBOOL ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos in
              let _v = _menhir_action_85 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState126 _tok
          | STRING _v_12 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_13 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos_13, _startpos, _v_12) in
              let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState126 _tok
          | RPAREN ->
              let _menhir_s = MenhirState126 in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell1_RPAREN (_menhir_stack, _menhir_s, _endpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LBRACE ->
                  _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
              | _ ->
                  _eRR ())
          | RETURN ->
              _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
          | INT _v_16 ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_17 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_17, _startpos, _v_16) in
              let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState126 _tok
          | IF ->
              _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
          | IDENT _v_19 ->
              _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _v_19 MenhirState126
          | FOR ->
              _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState126
          | FALSE ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_20 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_20, _startpos) in
              let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState126 _tok
          | _ ->
              _eRR ())
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | INT _v_22 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_23 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos_23, _startpos, _v_22) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState125 _tok
      | IDENT _v_25 ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_26 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos_26, _startpos, _v_25) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState125 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_28 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos_28, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState125 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | _ ->
          _eRR ()
  
  and _menhir_run_155 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_stmt -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_stmt (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_58 x xs in
      _menhir_goto_list_stmt_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_stmt_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState094 ->
          _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState154 ->
          _menhir_run_155 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_156 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LBRACE -> _ -> _ -> _ -> ttv_result =
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
      | MenhirState185 ->
          _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState093 ->
          _menhir_run_158 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState152 ->
          _menhir_run_153 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState149 ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState132 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState127 ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState113 ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState111 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState098 ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_186 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
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
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState190
      | TSTRING ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_86 () in
          _menhir_run_181 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState190 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_181 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState190 _tok
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_181 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState190 _tok
      | GLOBAL ->
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState190
      | EOF ->
          let _v = _menhir_action_55 () in
          _menhir_run_191 _menhir_stack _v
      | _ ->
          _eRR ()
  
  and _menhir_run_081 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
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
                  let _v = _menhir_action_86 () in
                  _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState083 _tok
              | TINT ->
                  let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_4 in
                  let _v = _menhir_action_84 () in
                  _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState083 _tok
              | TBOOL ->
                  let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_6 in
                  let _v = _menhir_action_85 () in
                  _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState083 _tok
              | RPAREN ->
                  let _v = _menhir_action_61 () in
                  _menhir_run_091_spec_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_091_spec_083 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let xs = _v in
      let _v = _menhir_action_03 xs in
      let _menhir_s = MenhirState083 in
      let _menhir_stack = MenhirCell1_arglist (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | _ ->
          _eRR ()
  
  and _menhir_run_159 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_prog) _menhir_state -> _menhir_box_prog =
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
                      let _v = _menhir_action_45 _endpos__2_ _startpos__1_ in
                      _menhir_goto_gexp _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | LBRACKET ->
                      let _v_4 = _menhir_action_86 () in
                      _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_1 _v_4 MenhirState161 _tok
                  | _ ->
                      _eRR ())
              | TRUE ->
                  let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_6 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos_6, _startpos_5) in
                  let _v = _menhir_action_48 _endpos__1_ _startpos__1_ in
                  _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | TINT ->
                  let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_8 in
                  let _v = _menhir_action_84 () in
                  _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState161 _tok
              | TBOOL ->
                  let _startpos_10 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _startpos__1_ = _startpos_10 in
                  let _v = _menhir_action_85 () in
                  _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState161 _tok
              | STRING _v_12 ->
                  let _startpos_13 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_14 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_s_, _startpos_s_, s) = (_endpos_14, _startpos_13, _v_12) in
                  let _v = _menhir_action_50 _endpos_s_ _startpos_s_ s in
                  _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | NEW ->
                  let _startpos_16 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _menhir_stack = MenhirCell1_NEW (_menhir_stack, MenhirState161, _startpos_16) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TSTRING ->
                      let _startpos_17 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _startpos__1_ = _startpos_17 in
                      let _v = _menhir_action_86 () in
                      _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState166 _tok
                  | TINT ->
                      let _startpos_19 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _startpos__1_ = _startpos_19 in
                      let _v = _menhir_action_84 () in
                      _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState166 _tok
                  | TBOOL ->
                      let _startpos_21 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _startpos__1_ = _startpos_21 in
                      let _v = _menhir_action_85 () in
                      _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState166 _tok
                  | _ ->
                      _eRR ())
              | INT _v_23 ->
                  let _startpos_24 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_25 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos_i_, _startpos_i_, i) = (_endpos_25, _startpos_24, _v_23) in
                  let _v = _menhir_action_47 _endpos_i_ _startpos_i_ i in
                  _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | FALSE ->
                  let _startpos_27 = _menhir_lexbuf.Lexing.lex_start_p in
                  let _endpos_28 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_endpos__1_, _startpos__1_) = (_endpos_28, _startpos_27) in
                  let _v = _menhir_action_49 _endpos__1_ _startpos__1_ in
                  _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_gexp : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_179 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, name, _, _) = _menhir_stack in
          let MenhirCell1_GLOBAL (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__5_, init) = (_endpos, _v) in
          let _v = _menhir_action_05 _endpos__5_ _startpos__1_ init name in
          _menhir_goto_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_175 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
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
                  let _v = _menhir_action_46 _endpos__2_ _startpos_t_ t in
                  _menhir_goto_gexp _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | LBRACKET ->
                  let (_startpos_t_, t) = (_startpos, _v) in
                  let _v = _menhir_action_87 t in
                  _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_167 : type  ttv_stack. (((ttv_stack, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT, _menhir_box_prog) _menhir_cell1_NEW as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_prog) _menhir_state -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RBRACKET ->
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LBRACE ->
                  let _menhir_stack = MenhirCell1_ty (_menhir_stack, _menhir_s, _v, _startpos) in
                  let _menhir_stack = MenhirCell1_RBRACKET (_menhir_stack, MenhirState168, _endpos) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TSTRING ->
                      _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState170
                  | TRUE ->
                      let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos__1_, _startpos__1_) = (_endpos_1, _startpos_0) in
                      let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
                      _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState170 _tok
                  | TINT ->
                      let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _startpos__1_ = _startpos_3 in
                      let _v = _menhir_action_84 () in
                      _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState170 _tok
                  | TILDE ->
                      _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState170
                  | TBOOL ->
                      let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _startpos__1_ = _startpos_5 in
                      let _v = _menhir_action_85 () in
                      _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState170 _tok
                  | STRING _v_7 ->
                      let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_9 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos_s_, _startpos_s_, s) = (_endpos_9, _startpos_8, _v_7) in
                      let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
                      _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState170 _tok
                  | NEW ->
                      _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState170
                  | LPAREN ->
                      _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState170
                  | INT _v_11 ->
                      let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_13 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos_i_, _startpos_i_, i) = (_endpos_13, _startpos_12, _v_11) in
                      let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
                      _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState170 _tok
                  | IDENT _v_15 ->
                      let _startpos_16 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_17 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos_id_, _startpos_id_, id) = (_endpos_17, _startpos_16, _v_15) in
                      let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
                      _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState170 _tok
                  | FALSE ->
                      let _startpos_19 = _menhir_lexbuf.Lexing.lex_start_p in
                      let _endpos_20 = _menhir_lexbuf.Lexing.lex_curr_p in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (_endpos__1_, _startpos__1_) = (_endpos_20, _startpos_19) in
                      let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
                      _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState170 _tok
                  | DASH ->
                      _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState170
                  | BANG ->
                      _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState170
                  | RBRACE ->
                      let _v = _menhir_action_59 () in
                      _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | _ ->
                      _eRR ())
              | LBRACKET ->
                  let (_startpos_t_, t) = (_startpos, _v) in
                  let _v = _menhir_action_87 t in
                  _menhir_goto_ty _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_t_ _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_171 : type  ttv_stack. ((((ttv_stack, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_cell1_ty, _menhir_box_prog) _menhir_cell1_RBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RBRACE ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_RBRACKET (_menhir_stack, _, _) = _menhir_stack in
          let MenhirCell1_ty (_menhir_stack, _, t, _) = _menhir_stack in
          let MenhirCell1_NEW (_menhir_stack, _, _startpos__1_) = _menhir_stack in
          let (xs, _endpos__7_) = (_v, _endpos) in
          let _v = _menhir_action_51 _endpos__7_ _startpos__1_ t xs in
          _menhir_goto_gexp _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_158 : type  ttv_stack. ((ttv_stack, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN, _menhir_box_prog) _menhir_cell1_arglist _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_arglist (_menhir_stack, _, args) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, fname, _, _) = _menhir_stack in
      let MenhirCell1_TVOID (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_body_, body) = (_endpos, _v) in
      let _v = _menhir_action_06 _endpos_body_ _startpos__1_ args body fname in
      _menhir_goto_decl _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_153 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_exp _menhir_cell0_SEMI, ttv_result) _menhir_cell1_stmt _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_stmt (_menhir_stack, _, s) = _menhir_stack in
      let MenhirCell0_SEMI (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_exp (_menhir_stack, _, e, _, _) = _menhir_stack in
      let MenhirCell0_SEMI (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_loption_separated_nonempty_list_COMMA_vdecl__ (_menhir_stack, _, xs) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_FOR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_82 _endpos_b_ _startpos__1_ b e s xs in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_150 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_exp _menhir_cell0_SEMI, ttv_result) _menhir_cell1_RPAREN -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_RPAREN (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell0_SEMI (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_exp (_menhir_stack, _, e, _, _) = _menhir_stack in
      let MenhirCell0_SEMI (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_loption_separated_nonempty_list_COMMA_vdecl__ (_menhir_stack, _, xs) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_FOR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_81 _endpos_b_ _startpos__1_ b e xs in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_133 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_SEMI, ttv_result) _menhir_cell1_stmt _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_stmt (_menhir_stack, _, s) = _menhir_stack in
      let MenhirCell1_SEMI (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell0_SEMI (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_loption_separated_nonempty_list_COMMA_vdecl__ (_menhir_stack, _, xs) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_FOR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_80 _endpos_b_ _startpos__1_ b s xs in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_128 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_SEMI, ttv_result) _menhir_cell1_RPAREN -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_RPAREN (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell1_SEMI (_menhir_stack, _, _) = _menhir_stack in
      let MenhirCell0_SEMI (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_loption_separated_nonempty_list_COMMA_vdecl__ (_menhir_stack, _, xs) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_FOR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_79 _endpos_b_ _startpos__1_ b xs in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_115 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN, ttv_result) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _ -> ttv_result =
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
      let _v = _menhir_action_52 _endpos_b2_ _startpos__1_ b1 b2 e in
      _menhir_goto_if_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_b2_ _v _menhir_s _tok
  
  and _menhir_goto_if_stmt : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState192 ->
          _menhir_run_138_spec_192 _menhir_stack _v _tok
      | MenhirState094 ->
          _menhir_run_138_spec_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState154 ->
          _menhir_run_138_spec_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState148 ->
          _menhir_run_138_spec_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState126 ->
          _menhir_run_138_spec_126 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState113 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_138_spec_094 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_75 ifs in
      _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState094 _tok
  
  and _menhir_run_138_spec_154 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_stmt -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_75 ifs in
      _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState154 _tok
  
  and _menhir_run_138_spec_148 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_exp _menhir_cell0_SEMI -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_75 ifs in
      _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState148 _tok
  
  and _menhir_run_151 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_exp _menhir_cell0_SEMI as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState152
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_138_spec_126 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_SEMI -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let ifs = _v in
      let _v = _menhir_action_75 ifs in
      _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState126 _tok
  
  and _menhir_run_131 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI, ttv_result) _menhir_cell1_SEMI as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_stmt (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_114 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN, ttv_result) _menhir_cell1_block -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let (_endpos_ifs_, ifs) = (_endpos, _v) in
      let _v = _menhir_action_10 ifs in
      _menhir_goto_else_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_ifs_ _v _tok
  
  and _menhir_run_112 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_block (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
          | IF ->
              _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
          | _ ->
              _eRR ())
      | EOF | FALSE | FOR | IDENT _ | IF | INT _ | LPAREN | NEW | RBRACE | RETURN | RPAREN | STRING _ | TBOOL | TINT | TRUE | TSTRING | VAR | WHILE ->
          let _v = _menhir_action_08 () in
          _menhir_goto_else_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_099 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_WHILE _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_exp _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_exp (_menhir_stack, _, e, _, _) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_WHILE (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_b_, b) = (_endpos, _v) in
      let _v = _menhir_action_78 _endpos_b_ _startpos__1_ b e in
      _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_090_spec_083 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_TVOID _menhir_cell0_IDENT _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_62 x in
      _menhir_run_091_spec_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v
  
  and _menhir_run_089 : type  ttv_stack. (ttv_stack, _menhir_box_prog) _menhir_cell1_ty _menhir_cell0_IDENT -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell0_IDENT (_menhir_stack, y, _, _) = _menhir_stack in
      let MenhirCell1_ty (_menhir_stack, _menhir_s, x, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_69 x xs y in
      _menhir_goto_separated_nonempty_list_COMMA_pair_ty_IDENT__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_027 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_expauxaux _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expauxaux (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
          let (xs, _endpos__4_) = (_v, _endpos) in
          let _v = _menhir_action_34 _endpos__4_ _startpos_e_ e xs in
          _menhir_goto_expauxaux _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_e_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_expaux : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState005 ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState018 ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState019 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState170 ->
          _menhir_run_029_spec_170 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState125 ->
          _menhir_run_029_spec_125 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState144 ->
          _menhir_run_029_spec_144 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState140 ->
          _menhir_run_029_spec_140 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState135 ->
          _menhir_run_029_spec_135 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState109 ->
          _menhir_run_029_spec_109 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState104 ->
          _menhir_run_029_spec_104 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState102 ->
          _menhir_run_029_spec_102 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState096 ->
          _menhir_run_029_spec_096 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState000 ->
          _menhir_run_029_spec_000 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState011 ->
          _menhir_run_029_spec_011 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState013 ->
          _menhir_run_029_spec_013 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState014 ->
          _menhir_run_029_spec_014 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState065 ->
          _menhir_run_029_spec_065 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState063 ->
          _menhir_run_029_spec_063 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState061 ->
          _menhir_run_029_spec_061 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState059 ->
          _menhir_run_029_spec_059 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState057 ->
          _menhir_run_029_spec_057 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState055 ->
          _menhir_run_029_spec_055 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState053 ->
          _menhir_run_029_spec_053 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState051 ->
          _menhir_run_029_spec_051 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState049 ->
          _menhir_run_029_spec_049 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState047 ->
          _menhir_run_029_spec_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState045 ->
          _menhir_run_029_spec_045 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState043 ->
          _menhir_run_029_spec_043 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState041 ->
          _menhir_run_029_spec_041 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState039 ->
          _menhir_run_029_spec_039 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState037 ->
          _menhir_run_029_spec_037 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState035 ->
          _menhir_run_029_spec_035 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState033 ->
          _menhir_run_029_spec_033 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState031 ->
          _menhir_run_029_spec_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState025 ->
          _menhir_run_029_spec_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_076 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_TILDE -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_TILDE (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_e_, e) = (_endpos, _v) in
      let _v = _menhir_action_31 _endpos_e_ _startpos__1_ e in
      _menhir_goto_expaux _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_069 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_DASH -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_DASH (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_e_, e) = (_endpos, _v) in
      let _v = _menhir_action_29 _endpos_e_ _startpos__1_ e in
      _menhir_goto_expaux _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_068 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_BANG -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_BANG (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos_e_, e) = (_endpos, _v) in
      let _v = _menhir_action_30 _endpos_e_ _startpos__1_ e in
      _menhir_goto_expaux _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_029_spec_170 : type  ttv_stack. ((((ttv_stack, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_cell1_ty, _menhir_box_prog) _menhir_cell1_RBRACKET -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState170 _tok
  
  and _menhir_run_030 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTBARI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | VERTBAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGANDI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
          | TRUE ->
              let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_1, _startpos_0) in
              let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState063 _tok
          | TINT ->
              let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_3 in
              let _v = _menhir_action_84 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState063 _tok
          | TILDE ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
          | TBOOL ->
              let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_5 in
              let _v = _menhir_action_85 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState063 _tok
          | STRING _v_7 ->
              let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_9 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos_9, _startpos_8, _v_7) in
              let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState063 _tok
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
          | INT _v_11 ->
              let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_13 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_13, _startpos_12, _v_11) in
              let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState063 _tok
          | IDENT _v_15 ->
              let _startpos_16 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_17 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_id_, _startpos_id_, id) = (_endpos_17, _startpos_16, _v_15) in
              let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState063 _tok
          | FALSE ->
              let _startpos_19 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_20 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_20, _startpos_19) in
              let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
              _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState063 _tok
          | DASH ->
              _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
          | BANG ->
              _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState063
          | _ ->
              _eRR ())
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACE | RPAREN ->
          let x = _v in
          let _v = _menhir_action_66 x in
          _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_031 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState031 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState031 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState031 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState031 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState031 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState031 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState031 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
      | _ ->
          _eRR ()
  
  and _menhir_run_033 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState033 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState033 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState033 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState033 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState033 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState033 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState033 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState033
      | _ ->
          _eRR ()
  
  and _menhir_run_035 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState035 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState035 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState035 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState035 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState035 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState035 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState035 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState035
      | _ ->
          _eRR ()
  
  and _menhir_run_037 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState037 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState037 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState037 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState037 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState037 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState037 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState037 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState037
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState039 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState039 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState039 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState039 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState039 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState039 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState039 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState043 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState043 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState043 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState043 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState043 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState043 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState043 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState043
      | _ ->
          _eRR ()
  
  and _menhir_run_049 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState049 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState049 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState049 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState049 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState049 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState049 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState049 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState061 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState061 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState061 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState061 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState061 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState061 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState061 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | _ ->
          _eRR ()
  
  and _menhir_run_051 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState051 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState051 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState051 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState051 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState051 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState051 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState051 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState045 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState045 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState045 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState045 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState045 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState045 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState045 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState045
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState047 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState047 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState047 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState047 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState047 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState047 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState047 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | _ ->
          _eRR ()
  
  and _menhir_run_053 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState053 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState053 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState053 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState053 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState053 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState053 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState053 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState053
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState055 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState055 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState055 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState055 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState055 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState055 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState055 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState057 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState057 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState057 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState057 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState057 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState057 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState057 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell0_DASH (_menhir_stack, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | TRUE ->
          let _startpos_0 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_0) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState041 _tok
      | TINT ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_1 in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState041 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | TBOOL ->
          let _startpos_2 = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos_2 in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState041 _tok
      | STRING _v ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos_3, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState041 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | INT _v ->
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos_4, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState041 _tok
      | IDENT _v ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos_5, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState041 _tok
      | FALSE ->
          let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos_6) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState041 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState041
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState059 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState059 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState059 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState059 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState059 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState059 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState059 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState059
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_exp_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState063 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState170 ->
          _menhir_run_026_spec_170 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState140 ->
          _menhir_run_026_spec_140 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState013 ->
          _menhir_run_026_spec_013 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState025 ->
          _menhir_run_026_spec_025 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_064 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_exp (_menhir_stack, _menhir_s, x, _, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_67 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_exp_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_026_spec_170 : type  ttv_stack. ((((ttv_stack, _menhir_box_prog) _menhir_cell1_GLOBAL _menhir_cell0_IDENT, _menhir_box_prog) _menhir_cell1_NEW, _menhir_box_prog) _menhir_cell1_ty, _menhir_box_prog) _menhir_cell1_RBRACKET -> _ -> _ -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_60 x in
      _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_026_spec_140 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_expauxaux _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_60 x in
      _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_141 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_expauxaux _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SEMI ->
              let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_expauxaux (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
              let (xs, _endpos__5_) = (_v, _endpos_0) in
              let _v = _menhir_action_74 _endpos__5_ _startpos_e_ e xs in
              _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | LBRACKET | LPAREN ->
              let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_expauxaux (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
              let (xs, _endpos__4_) = (_v, _endpos) in
              let _v = _menhir_action_34 _endpos__4_ _startpos_e_ e xs in
              _menhir_goto_expauxaux _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_e_ _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_026_spec_013 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_ty, ttv_result) _menhir_cell1_RBRACKET -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_60 x in
      _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_026_spec_025 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_expauxaux _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_60 x in
      _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_029_spec_125 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState125 _tok
  
  and _menhir_run_147 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_loption_separated_nonempty_list_COMMA_vdecl__ _menhir_cell0_SEMI as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | VERTBARI ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | VERTBAR ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | STAR ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_SEMI (_menhir_stack, _endpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | WHILE ->
              _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
          | VAR ->
              _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
          | TSTRING ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
          | TRUE ->
              let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_2, _startpos_1) in
              let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState148 _tok
          | TINT ->
              let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_4 in
              let _v = _menhir_action_84 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState148 _tok
          | TBOOL ->
              let _startpos_6 = _menhir_lexbuf.Lexing.lex_start_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _startpos__1_ = _startpos_6 in
              let _v = _menhir_action_85 () in
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState148 _tok
          | STRING _v_8 ->
              let _startpos_9 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_10 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_s_, _startpos_s_, s) = (_endpos_10, _startpos_9, _v_8) in
              let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState148 _tok
          | RPAREN ->
              let _menhir_s = MenhirState148 in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell1_RPAREN (_menhir_stack, _menhir_s, _endpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LBRACE ->
                  _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
              | _ ->
                  _eRR ())
          | RETURN ->
              _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
          | NEW ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
          | LPAREN ->
              _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
          | INT _v_13 ->
              let _startpos_14 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_15 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_i_, _startpos_i_, i) = (_endpos_15, _startpos_14, _v_13) in
              let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState148 _tok
          | IF ->
              _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
          | IDENT _v_17 ->
              _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _v_17 MenhirState148
          | FOR ->
              _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState148
          | FALSE ->
              let _startpos_18 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos_19 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos__1_, _startpos__1_) = (_endpos_19, _startpos_18) in
              let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
              _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState148 _tok
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGANDI ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGAND ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_029_spec_144 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_expauxaux -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState144 _tok
  
  and _menhir_run_145 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expauxaux as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTBARI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | VERTBAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACKET ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACKET | LPAREN ->
              let MenhirCell1_expauxaux (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
              let (_endpos__4_, n) = (_endpos_0, _v) in
              let _v = _menhir_action_33 _endpos__4_ _startpos_e_ e n in
              _menhir_goto_expauxaux _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_e_ _v _menhir_s _tok
          | EQ ->
              let MenhirCell1_expauxaux (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
              let (i, _endpos__4_) = (_v, _endpos_0) in
              let _v = _menhir_action_54 _endpos__4_ _startpos_e_ e i in
              _menhir_goto_lhs _menhir_stack _menhir_lexbuf _menhir_lexer _startpos_e_ _v _menhir_s
          | _ ->
              _eRR ())
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGANDI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_029_spec_140 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_expauxaux _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState140 _tok
  
  and _menhir_run_029_spec_135 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_lhs -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState135 _tok
  
  and _menhir_run_136 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_lhs as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTBARI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | VERTBAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_lhs (_menhir_stack, _menhir_s, p, _startpos_p_) = _menhir_stack in
          let (e, _endpos__4_) = (_v, _endpos_0) in
          let _v = _menhir_action_73 _endpos__4_ _startpos_p_ e p in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGANDI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_029_spec_109 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState109 _tok
  
  and _menhir_run_110 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IF _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | VERTBARI ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | VERTBAR ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | STAR ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGANDI ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGAND ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_029_spec_104 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_RETURN -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState104 _tok
  
  and _menhir_run_106 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_RETURN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTBARI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | VERTBAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | SEMI ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_RETURN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (e, _endpos__3_) = (_v, _endpos_0) in
          let _v = _menhir_action_77 _endpos__3_ _startpos__1_ e in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGANDI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_029_spec_102 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_VAR _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState102 _tok
  
  and _menhir_run_103 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_VAR _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTBARI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | VERTBAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGANDI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | SEMI ->
          let MenhirCell0_IDENT (_menhir_stack, id, _, _) = _menhir_stack in
          let MenhirCell1_VAR (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let init = _v in
          let _v = _menhir_action_88 id init in
          _menhir_goto_vdecl _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_vdecl : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState192 ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState154 ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState094 ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState148 ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState126 ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState121 ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | MenhirState119 ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_129 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SEMI ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__2_, _startpos_d_, d) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_72 _endpos__2_ _startpos_d_ d in
          _menhir_goto_stmt _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_120 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_vdecl (_menhir_stack, _menhir_s, _v, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR ->
              _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | _ ->
              _eRR ())
      | SEMI ->
          let x = _v in
          let _v = _menhir_action_70 x in
          _menhir_goto_separated_nonempty_list_COMMA_vdecl_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_vdecl_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState119 ->
          _menhir_run_123_spec_119 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState121 ->
          _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_123_spec_119 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_FOR _menhir_cell0_LPAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let x = _v in
      let _v = _menhir_action_64 x in
      _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState119
  
  and _menhir_run_122 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_vdecl -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_vdecl (_menhir_stack, _menhir_s, x, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_71 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_vdecl_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_029_spec_096 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_WHILE _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState096 _tok
  
  and _menhir_run_097 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_WHILE _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | VERTBARI ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | VERTBAR ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | STAR ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LBRACE ->
              _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
          | _ ->
              _eRR ())
      | PLUS ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGANDI ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGAND ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_029_spec_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> _ -> _menhir_box_exp_top =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState000 _tok
  
  and _menhir_run_078 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, _menhir_box_exp_top) _menhir_state -> _ -> _menhir_box_exp_top =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTBARI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | VERTBAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGANDI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EOF ->
          let e = _v in
          let _v = _menhir_action_28 e in
          MenhirBox_exp_top _v
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_029_spec_011 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_ty -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState011 _tok
  
  and _menhir_run_074 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_ty as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTBARI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | VERTBAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACKET ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_ty (_menhir_stack, _, t, _) = _menhir_stack in
          let MenhirCell1_NEW (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (e, _endpos__5_) = (_v, _endpos_0) in
          let _v = _menhir_action_43 _endpos__5_ _startpos__1_ e t in
          _menhir_goto_expauxaux _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__5_ _startpos__1_ _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGANDI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_029_spec_013 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_NEW, ttv_result) _menhir_cell1_ty, ttv_result) _menhir_cell1_RBRACKET -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState013 _tok
  
  and _menhir_run_029_spec_014 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState014 _tok
  
  and _menhir_run_070 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTBARI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | VERTBAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (e, _endpos__3_) = (_v, _endpos_0) in
          let _v = _menhir_action_44 e in
          _menhir_goto_expauxaux _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _startpos__1_ _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGANDI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_029_spec_065 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_expauxaux -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState065 _tok
  
  and _menhir_run_066 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expauxaux as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTBARI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer
      | VERTBAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RBRACKET ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_expauxaux (_menhir_stack, _menhir_s, e, _startpos_e_, _) = _menhir_stack in
          let (_endpos__4_, n) = (_endpos_0, _v) in
          let _v = _menhir_action_33 _endpos__4_ _startpos_e_ e n in
          _menhir_goto_expauxaux _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _startpos_e_ _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGANDI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_029_spec_063 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState063 _tok
  
  and _menhir_run_029_spec_061 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState061 _tok
  
  and _menhir_run_062 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTBAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | EOF | LOGANDI | RBRACE | RBRACKET | RPAREN | SEMI | VERTBARI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_25 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_goto_exp : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState125 ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState144 ->
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState135 ->
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState109 ->
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState104 ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState096 ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState011 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState014 ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState041 ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState037 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState035 ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState033 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState170 ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState140 ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState013 ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState025 ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_060 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ | COMMA | EOF | EQEQ | LOGAND | LOGANDI | RBRACE | RBRACKET | RPAREN | SEMI | VERTBAR | VERTBARI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_22 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_058 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ | COMMA | EOF | EQEQ | LOGAND | LOGANDI | RBRACE | RBRACKET | RPAREN | SEMI | VERTBAR | VERTBARI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_21 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_056 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ | COMMA | EOF | EQEQ | GT | GTEQ | LOGAND | LOGANDI | LT | LTEQ | RBRACE | RBRACKET | RPAREN | SEMI | VERTBAR | VERTBARI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_19 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_054 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ | COMMA | EOF | EQEQ | GT | GTEQ | LOGAND | LOGANDI | LT | LTEQ | RBRACE | RBRACKET | RPAREN | SEMI | VERTBAR | VERTBARI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_20 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_052 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | EOF | LOGAND | LOGANDI | RBRACE | RBRACKET | RPAREN | SEMI | VERTBAR | VERTBARI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_23 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_050 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ | COMMA | EOF | EQEQ | GT | GTEQ | LOGAND | LOGANDI | LT | LTEQ | RBRACE | RBRACKET | RPAREN | SEMI | VERTBAR | VERTBARI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_17 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_048 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ | COMMA | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | LOGAND | LOGANDI | LT | LTEQ | LTLT | RBRACE | RBRACKET | RPAREN | SEMI | VERTBAR | VERTBARI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_15 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_046 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ | COMMA | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | LOGAND | LOGANDI | LT | LTEQ | LTLT | RBRACE | RBRACKET | RPAREN | SEMI | VERTBAR | VERTBARI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_16 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_044 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ | COMMA | EOF | EQEQ | GT | GTEQ | LOGAND | LOGANDI | LT | LTEQ | RBRACE | RBRACKET | RPAREN | SEMI | VERTBAR | VERTBARI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_18 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_042 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_DASH as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ | COMMA | DASH | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | LOGAND | LOGANDI | LT | LTEQ | LTLT | PLUS | RBRACE | RBRACKET | RPAREN | SEMI | VERTBAR | VERTBARI ->
          let MenhirCell0_DASH (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_13 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_040 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ | COMMA | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | LOGAND | LOGANDI | LT | LTEQ | LTLT | RBRACE | RBRACKET | RPAREN | SEMI | VERTBAR | VERTBARI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_14 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_038 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ | COMMA | DASH | EOF | EQEQ | GT | GTEQ | GTGT | GTGTGT | LOGAND | LOGANDI | LT | LTEQ | LTLT | PLUS | RBRACE | RBRACKET | RPAREN | SEMI | VERTBAR | VERTBARI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_12 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_036 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
      let (_endpos_e2_, e2) = (_endpos, _v) in
      let _v = _menhir_action_11 _endpos_e2_ _startpos_e1_ e1 e2 in
      _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
  
  and _menhir_run_034 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | EOF | LOGANDI | RBRACE | RBRACKET | RPAREN | SEMI | VERTBAR | VERTBARI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_24 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_032 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_exp as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | VERTBAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer
      | STAR ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTLT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGANDI ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer
      | LOGAND ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTGT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GT ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer
      | EQEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DASH ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer
      | BANGEQ ->
          let _menhir_stack = MenhirCell1_exp (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer
      | COMMA | EOF | RBRACE | RBRACKET | RPAREN | SEMI | VERTBARI ->
          let MenhirCell1_exp (_menhir_stack, _menhir_s, e1, _startpos_e1_, _) = _menhir_stack in
          let (_endpos_e2_, e2) = (_endpos, _v) in
          let _v = _menhir_action_26 _endpos_e2_ _startpos_e1_ e1 e2 in
          _menhir_goto_exp _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e2_ _startpos_e1_ _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_029_spec_059 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState059 _tok
  
  and _menhir_run_029_spec_057 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState057 _tok
  
  and _menhir_run_029_spec_055 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState055 _tok
  
  and _menhir_run_029_spec_053 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState053 _tok
  
  and _menhir_run_029_spec_051 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState051 _tok
  
  and _menhir_run_029_spec_049 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState049 _tok
  
  and _menhir_run_029_spec_047 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState047 _tok
  
  and _menhir_run_029_spec_045 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState045 _tok
  
  and _menhir_run_029_spec_043 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState043 _tok
  
  and _menhir_run_029_spec_041 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp _menhir_cell0_DASH -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState041 _tok
  
  and _menhir_run_029_spec_039 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState039 _tok
  
  and _menhir_run_029_spec_037 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState037 _tok
  
  and _menhir_run_029_spec_035 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let (_endpos_e_, e) = (_endpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _v _tok
  
  and _menhir_run_029_spec_033 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState033 _tok
  
  and _menhir_run_029_spec_031 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_exp -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState031 _tok
  
  and _menhir_run_029_spec_025 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_expauxaux _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_e_, _startpos_e_, e) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_27 e in
      _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_e_ _startpos_e_ _v MenhirState025 _tok
  
  let rec _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_exp_top =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState000 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState000 _tok
      | TILDE ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState000 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState000 _tok
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState000 _tok
      | IDENT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_38 _endpos_id_ _startpos_id_ id in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v MenhirState000 _tok
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState000 _tok
      | DASH ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | BANG ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | _ ->
          _eRR ()
  
  let rec _menhir_run_080 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_prog =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TVOID ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | TSTRING ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_86 () in
          _menhir_run_181 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState080 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_181 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState080 _tok
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_181 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState080 _tok
      | GLOBAL ->
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | EOF ->
          let _v = _menhir_action_55 () in
          _menhir_run_188 _menhir_stack _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_192 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_stmt_top =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | WHILE ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | VAR ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | TSTRING ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | TRUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_39 _endpos__1_ _startpos__1_ in
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState192 _tok
      | TINT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_84 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState192 _tok
      | TBOOL ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _startpos__1_ = _startpos in
          let _v = _menhir_action_85 () in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v MenhirState192 _tok
      | STRING _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_s_, _startpos_s_, s) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_41 _endpos_s_ _startpos_s_ s in
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_s_ _startpos_s_ _v MenhirState192 _tok
      | RETURN ->
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | NEW ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | LPAREN ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | INT _v ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos_i_, _startpos_i_, i) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_35 _endpos_i_ _startpos_i_ i in
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_i_ _startpos_i_ _v MenhirState192 _tok
      | IF ->
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | IDENT _v ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState192
      | FOR ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | FALSE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_endpos__1_, _startpos__1_) = (_endpos, _startpos) in
          let _v = _menhir_action_40 _endpos__1_ _startpos__1_ in
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v MenhirState192 _tok
      | _ ->
          _eRR ()
  
end

let stmt_top =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_stmt_top v = _menhir_run_192 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let prog =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_prog v = _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let exp_top =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_exp_top v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

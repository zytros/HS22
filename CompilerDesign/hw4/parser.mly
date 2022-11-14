%{
open Ast

let loc (startpos:Lexing.position) (endpos:Lexing.position) (elt:'a) : 'a node =
  { elt ; loc=Range.mk_lex_range startpos endpos }

%}

/* Declare your tokens here. */
%token EOF
%token <int64>  INT
%token NULL
%token <string> STRING
%token <string> IDENT

%token TINT     /* int */
%token TVOID    /* void */
%token TSTRING  /* string */
%token IF       /* if */
%token ELSE     /* else */
%token WHILE    /* while */
%token RETURN   /* return */
%token VAR      /* var */
%token SEMI     /* ; */
%token COMMA    /* , */
%token LBRACE   /* { */
%token RBRACE   /* } */
%token PLUS     /* + */
%token DASH     /* - */
%token STAR     /* * */
%token EQEQ     /* == */
%token EQ       /* = */
%token LPAREN   /* ( */
%token RPAREN   /* ) */
%token LBRACKET /* [ */
%token RBRACKET /* ] */
%token TILDE    /* ~ */
%token BANG     /* ! */
%token GLOBAL   /* global */

%token TBOOL 
%token FOR
%token NEW

%token VERTBAR   // |
%token LOGAND    // &
%token BANGEQ // !=
%token LT     // <
%token GT     // >
%token LTEQ   // <=
%token GTEQ   // >=
%token LTLT   // <<
%token GTGT   // >>
%token GTGTGT // >>>
%token LOGANDI  // [&]
%token VERTBARI // [|]
%token TRUE   // true
%token FALSE  // false

%left VERTBARI
%left LOGANDI
%left VERTBAR
%left LOGAND
%left EQEQ BANGEQ
%left LT LTEQ GT GTEQ
%left LTLT GTGT GTGTGT
%left PLUS DASH
%left STAR

// Why is this here?
/*%nonassoc BANG
%nonassoc TILDE
%nonassoc LBRACKET
%nonassoc LPAREN*/

/* ---------------------------------------------------------------------- */

%start prog
%start exp_top
%start stmt_top
%type <Ast.exp Ast.node> exp_top
%type <Ast.stmt Ast.node> stmt_top

%type <Ast.prog> prog
%type <Ast.exp Ast.node> exp
%type <Ast.stmt Ast.node> stmt
%type <Ast.block> block
%type <Ast.ty> ty
%%

exp_top:
  | e=exp EOF { e }

stmt_top:
  | s=stmt EOF { s }

prog:
  | p=list(decl) EOF  { p }

decl:
  | GLOBAL name=IDENT EQ init=gexp SEMI
    { Gvdecl (loc $startpos $endpos { name; init }) }
  | frtyp=ret_ty fname=IDENT LPAREN args=arglist RPAREN body=block
    { Gfdecl (loc $startpos $endpos { frtyp; fname; args; body }) }

arglist:
  | l=separated_list(COMMA, pair(ty,IDENT)) { l }
    
ty:
  | TINT   { TInt }
  | TBOOL   { TBool }
  | r=rtyp { TRef r } 

%inline ret_ty:
  | TVOID  { RetVoid }
  | t=ty   { RetVal t }

%inline rtyp:
  | TSTRING { RString }
  | t=ty LBRACKET RBRACKET { RArray t }

%inline cbool:
  | TRUE  { true }
  | FALSE { false }

%inline bop: // fix precedence (BIG AAAAAAAAHHHH)
  | STAR    {Mul}
  | PLUS   { Add }
  | DASH   { Sub }
  | LTLT    { Shl }
  | GTGT    { Shr }
  | GTGTGT  { Sar }
  | LT      { Lt }
  | LTEQ    { Lte }
  | GT      { Gt }
  | GTEQ    { Gte }
  | EQEQ   { Eq }
  | BANGEQ  { Neq }
  | LOGAND     { And }
  | VERTBAR    { Or }
  | LOGANDI   { IAnd }
  | VERTBARI  { IOr }

%inline uop:
  | DASH  { Neg }
  | BANG  { Lognot }
  | TILDE { Bitnot }

gexp:
  | t=rtyp NULL  { loc $startpos $endpos @@ CNull t }
  | i=INT      { loc $startpos $endpos @@ CInt i }
  | b=cbool     { loc $startpos $endpos @@ CBool b }
  | s=STRING    { loc $startpos $endpos @@ CStr s }
  | NEW t=ty LBRACKET RBRACKET LBRACE xs=separated_list(COMMA, exp) RBRACE { loc $startpos $endpos @@ CArr (t, xs)}

lhs:  
  | id=IDENT            { loc $startpos $endpos @@ Id id }
  | e=expauxaux LBRACKET i=exp RBRACKET
                        { loc $startpos $endpos @@ Index (e, i) }

exp:
  | e1=exp op=bop e2=exp  { loc $startpos $endpos @@ Bop (op, e1, e2) }
  | e=expaux { e }
expaux:
  | u=uop e=expaux  { loc $startpos $endpos @@ Uop (u, e)}
  | e=expauxaux { e }
expauxaux:
  | e=expauxaux LBRACKET n=exp RBRACKET 
                        { loc $startpos $endpos @@ Index (e, n) }
  | e=expauxaux LPAREN xs=separated_list(COMMA, exp) RPAREN 
                        { loc $startpos $endpos @@ Call (e,xs)}
  | i=INT               { loc $startpos $endpos @@ CInt i }
  | t=rtyp NULL         { loc $startpos $endpos @@ CNull t }
  | id=IDENT            { loc $startpos $endpos @@ Id id }
  | b=cbool             { loc $startpos $endpos @@ CBool b }
  | s=STRING            { loc $startpos $endpos @@ CStr s }
  | NEW t=ty LBRACKET RBRACKET LBRACE xs=separated_list(COMMA, exp) RBRACE  { loc $startpos $endpos @@ CArr (t,xs) }
  | NEW t=ty LBRACKET e=exp RBRACKET  {
    if t=TInt || t=TBool then
      loc $startpos $endpos @@ NewArr (t,e)
    else
      failwith "init failed expauxaux"
  }
  | LPAREN e=exp RPAREN { e } 



vdecl:
  | VAR id=IDENT EQ init=exp { (id, init) }

stmt: 
  | d=vdecl SEMI        { loc $startpos $endpos @@ Decl(d) }
  | p=lhs EQ e=exp SEMI { loc $startpos $endpos @@ Assn(p,e) }
  | e=expauxaux LPAREN xs=separated_list(COMMA, exp) RPAREN SEMI
                        { loc $startpos $endpos @@ SCall (e, xs) }
  | ifs=if_stmt         { ifs }
  | RETURN SEMI         { loc $startpos $endpos @@ Ret(None) }
  | RETURN e=exp SEMI   { loc $startpos $endpos @@ Ret(Some e) }
  | WHILE LPAREN e=exp RPAREN b=block  
                        { loc $startpos $endpos @@ While(e, b) } 
  | FOR LPAREN d=separated_list(COMMA, vdecl) SEMI  SEMI  RPAREN b=block  { loc $startpos $endpos @@ For(d, None, None, b) } 
  | FOR LPAREN d=separated_list(COMMA, vdecl) SEMI  SEMI s=stmt RPAREN b=block { loc $startpos $endpos @@ For(d, None, Some s, b) } 
  | FOR LPAREN d=separated_list(COMMA, vdecl) SEMI e=exp SEMI  RPAREN b=block { loc $startpos $endpos @@ For(d, Some e, None, b) } 
  | FOR LPAREN d=separated_list(COMMA, vdecl) SEMI e=exp SEMI s=stmt RPAREN b=block { loc $startpos $endpos @@ For(d, Some e, Some s, b) } 

block:
  | LBRACE stmts=list(stmt) RBRACE { stmts }

if_stmt:
  | IF LPAREN e=exp RPAREN b1=block b2=else_stmt
    { loc $startpos $endpos @@ If(e,b1,b2) }

else_stmt:
  | (* empty *)       { [] }
  | ELSE b=block      { b }
  | ELSE ifs=if_stmt  { [ ifs ] }

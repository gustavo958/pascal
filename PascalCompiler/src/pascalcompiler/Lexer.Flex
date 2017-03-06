   package pascalcompiler;
 import java_cup.runtime.*;
import static pascalcompiler.Token.*;


%%
%class lexer
%line
%column
%type Token

numero = [0-9]+
entero = -?{numero}
double = {entero}(\.{numero}+)?
identificador = [a-zA-Z]([0-9]|[a-zA-Z])*
texto = '.*'
S = [ \t\r\n]

%{
public String lexeme;
public int linea;
public int columna;
%}

%%


{S} {/*Ignore*/}

":=" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PASIG;}

":" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PDOSPUNTOS;}

"<>" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PDISTINTO;}

"+" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PMAS;}

"*" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PPOR;}

"-" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PMENOS;}

"/" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PENTRE;}

"mod" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PMOD;}

"%" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PMOD2;}

"<<" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PBITWISEL;}

">>" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PBITWISER;}

"^" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PPOINTER;}

"=" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PCOMPARE;}

"<" {  lexeme = yytext();  linea = yyline; columna = yycolumn; return PMENOR;}

">" {  lexeme = yytext();  linea = yyline; columna = yycolumn; return PMAYOR;}

"<=" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PMENORIGUAL;}

">=" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PMAYORIGUAL;}

".." { lexeme = yytext();  linea = yyline; columna = yycolumn; return PDESDEHASTA;}

"[" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PBRACKETA;}

"]" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PBRACKETC;}

"(" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PPARA;}

")" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PPARC;}

"," {lexeme = yytext();  linea = yyline; columna = yycolumn; return PCOMA;}

";" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PPUNTOCOMA;}

"continue" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PCONTINUE;}

"program" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PPROGRAM;}

"and" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PAND;}

"array" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PARRAY;}

"begin" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PBEGIN;}

"case" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PCASE;}

"const" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PCONST;}

"div" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PDIV;}

"do" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PDO;}

"downto" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PDOWNTO;}

"end" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PEND;}

"file" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PFILE;}

"var" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PVAR;}

"goto" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PGOTO;}

"in" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PIN;}

"label" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PLABEL;}

"nil" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PNIL;}

"not" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PNOT;}

"of" { lexeme = yytext();  linea = yyline; columna = yycolumn; return POF;}

"packed" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PPACKED;}

"procedure" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PPROCEDURE;}

"record" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PRECORD;}

"repeat" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PREPEAT;}

"set" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PSET;}

"to" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PTO;}

"type" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PTYPE;}

"until" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PUNTIL;}

"with" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PWITH;}

"writeln" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PWRITELN;}

"cardinal" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PCARDINAL;}

"double" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PDOUBLE;}

"shortint" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PSHORTINT;}

"smallint" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PSMALLINT;}

"longint" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PLONGINT;}

"int64" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PINT64;}

"byte" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PBYTE;}

"word" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PWORD;}

"longword" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PLONGWORD;}

"character" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PCHARACTER;}

"real" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PREAL;}

"enumerated" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PENUMERATED;}

"subrange" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PSUBRANGE;}

"and then" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PANDTHEN;}

"or else" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PORELSE;}

"xor" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PXOR;}

"shl" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PSHL;}

"shr" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PSHR;}

"char" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PCHAR;}

"new" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PNEW;}

"class" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PCLASS;}

"readln" { lexeme = yytext();  linea = yyline; columna = yycolumn; return PREADLN;}

"string" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PSTRING;}

"boolean" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PBOOLEAN;}

"integer" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PINTEGER;}

"true" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PTRUE;}

"false" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PFALSE;}

"if" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PIF;}

"then" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PTHEN;}

"else" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PELSE;}

"for" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PFOR;}

"while" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PWHILE;}

"function" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PFUNCTION;}

"return" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PRETURN;}

"break" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PBREAK;}

"or" {lexeme = yytext();  linea = yyline; columna = yycolumn; return POR;}

"(*" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PCOMENTARIOA;}

"*)" {lexeme = yytext();  linea = yyline; columna = yycolumn; return PCOMENTARIOC;}

{identificador} {lexeme = yytext();  linea = yyline; columna = yycolumn; return PID;}

{numero} {lexeme = yytext();  linea = yyline; columna = yycolumn; return PNUMERO;}

{entero} {lexeme = yytext();  linea = yyline; columna = yycolumn; return PENTERO;}

{double} {lexeme = yytext();  linea = yyline; columna = yycolumn; return PFLOTANTE;}

{texto} {lexeme = yytext();  linea = yyline; columna = yycolumn; return PTEXTO;}

. {lexeme = yytext();  linea = yyline; columna = yycolumn; return PERROR;}
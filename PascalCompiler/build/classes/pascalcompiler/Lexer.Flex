package pascalcompiler;
import java_cup.runtime.*;
import static pascalcompiler.Token.*;

%%
%cupsym Token
%class lexer
%cup
%public
%unicode
%line
%column

numero = [0-9]+
entero = -?{numero}
double = {entero}(\.{numero}+)?
identificador = [a-zA-Z]([0-9]|[a-zA-Z])*
texto = '.*'
S = [ \t\r\n]
%%

{S} {/*Ignore*/}

/* Tipos */
"array" {return new Symbol(Token.PARRAY, yycolumn, yyline, new String(yytext()));}
"cardinal" {return new Symbol(Token.PCARDINAL, yycolumn, yyline, new String(yytext()));}
"double" {return new Symbol(Token.PDOUBLE, yycolumn, yyline, new String(yytext()));}
"shortint" {return new Symbol(Token.PSHORTINT, yycolumn, yyline, new String(yytext()));}
"smallint" {return new Symbol(Token.PSMALLINT, yycolumn, yyline, new String(yytext()));}
"longint" {return new Symbol(Token.PLONGINT, yycolumn, yyline, new String(yytext()));}
"int64" {return new Symbol(Token.PINT64, yycolumn, yyline, new String(yytext()));}
"byte" {return new Symbol(Token.PBYTE, yycolumn, yyline, new String(yytext()));}
"word" {return new Symbol(Token.PWORD, yycolumn, yyline, new String(yytext()));}
"longword" {return new Symbol(Token.PLONGWORD, yycolumn, yyline, new String(yytext()));}
"character" {return new Symbol(Token.PCHARACTER, yycolumn, yyline, new String(yytext()));}
"real" {return new Symbol(Token.PREAL, yycolumn, yyline, new String(yytext()));}
"enumerated" {return new Symbol(Token.PENUMERATED, yycolumn, yyline, new String(yytext()));}
"string" {return new Symbol(Token.PSTRING, yycolumn, yyline, new String(yytext()));}
"boolean" {return new Symbol(Token.PBOOLEAN, yycolumn, yyline, new String(yytext()));}
"integer" {return new Symbol(Token.PINTEGER, yycolumn, yyline, new String(yytext()));}
"char" {return new Symbol(Token.PCHAR, yycolumn, yyline, new String(yytext()));}

/* Flujo de Control */
"if" {return new Symbol(Token.PIF, yycolumn, yyline, new String(yytext()));}
"then" {return new Symbol(Token.PTHEN, yycolumn, yyline, new String(yytext()));}
"else" {return new Symbol(Token.PELSE, yycolumn, yyline, new String(yytext()));}
"for" {return new Symbol(Token.PFOR, yycolumn, yyline, new String(yytext()));}
"do" {return new Symbol(Token.PDO, yycolumn, yyline, new String(yytext()));}
"while" {return new Symbol(Token.PWHILE, yycolumn, yyline, new String(yytext()));}
"case" {return new Symbol(Token.PCASE, yycolumn, yyline, new String(yytext()));}
"or else" {return new Symbol(Token.PORELSE, yycolumn, yyline, new String(yytext()));}
"until" {return new Symbol(Token.PUNTIL, yycolumn, yyline, new String(yytext()));}
"repeat" {return new Symbol(Token.PREPEAT, yycolumn, yyline, new String(yytext()));}
"to" {return new Symbol(Token.PTO, yycolumn, yyline, new String(yytext()));}
"with" {return new Symbol(Token.PWITH, yycolumn, yyline, new String(yytext()));}
"and then" {return new Symbol(Token.PANDTHEN, yycolumn, yyline, new String(yytext()));}

/* Aritmeticos */
"+" {return new Symbol(Token.PMAS, yycolumn, yyline, new String(yytext()));}
"*" {return new Symbol(Token.PPOR, yycolumn, yyline, new String(yytext()));}
"-" {return new Symbol(Token.PMENOS, yycolumn, yyline, new String(yytext()));}
"/" {return new Symbol(Token.PENTRE, yycolumn, yyline, new String(yytext()));}
"mod" {return new Symbol(Token.PMOD, yycolumn, yyline, new String(yytext()));}
"%" {return new Symbol(Token.PMOD2, yycolumn, yyline, new String(yytext()));}
":=" {return new Symbol(Token.PASIG, yycolumn, yyline, new String(yytext()));}

/* Comparacion */
"<>" {return new Symbol(Token.PDISTINTO, yycolumn, yyline, new String(yytext()));}
"=" {return new Symbol(Token.PCOMPARE, yycolumn, yyline, new String(yytext()));}
"<" {return new Symbol(Token.PMENOR, yycolumn, yyline, new String(yytext()));}
">" {return new Symbol(Token.PMAYOR, yycolumn, yyline, new String(yytext()));}
"<=" {return new Symbol(Token.PMENORIGUAL, yycolumn, yyline, new String(yytext()));}
">=" {return new Symbol(Token.PMAYORIGUAL, yycolumn, yyline, new String(yytext()));}
"<<" {return new Symbol(Token.PBITWISEL, yycolumn, yyline, new String(yytext()));}
">>" {return new Symbol(Token.PBITWISER, yycolumn, yyline, new String(yytext()));}

/* Binarios */
"and" {return new Symbol(Token.PAND, yycolumn, yyline, new String(yytext()));}
"or" {return new Symbol(Token.POR, yycolumn, yyline, new String(yytext()));}
"not" {return new Symbol(Token.PNOT, yycolumn, yyline, new String(yytext()));}
"xor" {return new Symbol(Token.PXOR, yycolumn, yyline, new String(yytext()));}

/* Delimitadores */
"[" {return new Symbol(Token.PBRACKETA, yycolumn, yyline, new String(yytext()));}
"]" {return new Symbol(Token.PBRACKETC, yycolumn, yyline, new String(yytext()));}
"(" {return new Symbol(Token.PPARA, yycolumn, yyline, new String(yytext()));}
")" {return new Symbol(Token.PPARC, yycolumn, yyline, new String(yytext()));}
";" {return new Symbol(Token.PPUNTOCOMA, yycolumn, yyline, new String(yytext()));}
"(*" {return new Symbol(Token.PCOMENTARIOA, yycolumn, yyline, new String(yytext()));}
"*)" {return new Symbol(Token.PCOMENTARIOC, yycolumn, yyline, new String(yytext()));}

/* Valores */
"true" {return new Symbol(Token.PTRUE, yycolumn, yyline, new String(yytext()));}
"false" {return new Symbol(Token.PFALSE, yycolumn, yyline, new String(yytext()));}
"nil" {return new Symbol(Token.PNIL, yycolumn, yyline, new String(yytext()));}

/* Jerarquias */
"program" {return new Symbol(Token.PPROGRAM, yycolumn, yyline, new String(yytext()));}
"begin" {return new Symbol(Token.PBEGIN, yycolumn, yyline, new String(yytext()));}
"end" {return new Symbol(Token.PEND, yycolumn, yyline, new String(yytext()));}
"class" {return new Symbol(Token.PCLASS, yycolumn, yyline, new String(yytext()));}
"function" {return new Symbol(Token.PFUNCTION, yycolumn, yyline, new String(yytext()));}
"procedure" {return new Symbol(Token.PPROCEDURE, yycolumn, yyline, new String(yytext()));}
"record" {return new Symbol(Token.PRECORD, yycolumn, yyline, new String(yytext()));}

/* Fijo de Navegación */
"continue" {return new Symbol(Token.PCONTINUE, yycolumn, yyline, new String(yytext()));}
"downto" {return new Symbol(Token.PDOWNTO, yycolumn, yyline, new String(yytext()));}
"goto" {return new Symbol(Token.PGOTO, yycolumn, yyline, new String(yytext()));}
"return" {return new Symbol(Token.PRETURN, yycolumn, yyline, new String(yytext()));}
"break" {return new Symbol(Token.PBREAK, yycolumn, yyline, new String(yytext()));}
"label" {return new Symbol(Token.PLABEL, yycolumn, yyline, new String(yytext()));}

/* Simbolos Generales */
":" {return new Symbol(Token.PDOSPUNTOS, yycolumn, yyline, new String(yytext()));}
"^" {return new Symbol(Token.PPOINTER, yycolumn, yyline, new String(yytext()));}
".." {return new Symbol(Token.PDESDEHASTA, yycolumn, yyline, new String(yytext()));}
"," {return new Symbol(Token.PCOMA, yycolumn, yyline, new String(yytext()));}

/* IO */
"writeln" {return new Symbol(Token.PWRITELN, yycolumn, yyline, new String(yytext()));}
"readln" {return new Symbol(Token.PREADLN, yycolumn, yyline, new String(yytext()));}

/* Palabras Reservadas */
"const" {return new Symbol(Token.PCONST, yycolumn, yyline, new String(yytext()));}
"div" {return new Symbol(Token.PDIV, yycolumn, yyline, new String(yytext()));}
"file" {return new Symbol(Token.PFILE, yycolumn, yyline, new String(yytext()));}
"var" {return new Symbol(Token.PVAR, yycolumn, yyline, new String(yytext()));}
"in" {return new Symbol(Token.PIN, yycolumn, yyline, new String(yytext()));}
"of" {return new Symbol(Token.POF, yycolumn, yyline, new String(yytext()));}
"packed" {return new Symbol(Token.PPACKED, yycolumn, yyline, new String(yytext()));}
"set" {return new Symbol(Token.PSET, yycolumn, yyline, new String(yytext()));}
"type" {return new Symbol(Token.PTYPE, yycolumn, yyline, new String(yytext()));}
"subrange" {return new Symbol(Token.PSUBRANGE, yycolumn, yyline, new String(yytext()));}
"shl" {return new Symbol(Token.PSHL, yycolumn, yyline, new String(yytext()));}
"shr" {return new Symbol(Token.PSHR, yycolumn, yyline, new String(yytext()));}
"new" {return new Symbol(Token.PNEW, yycolumn, yyline, new String(yytext()));}

/* Genericos */
{identificador} {return new Symbol(Token.PID, yycolumn, yyline, new String(yytext()));}
{numero} {return new Symbol(Token.PNUMERO, yycolumn, yyline, new String(yytext()));}
{entero} {return new Symbol(Token.PENTERO, yycolumn, yyline, new String(yytext()));}
{double} {return new Symbol(Token.PFLOTANTE, yycolumn, yyline, new String(yytext()));}
{texto} {return new Symbol(Token.PTEXTO, yycolumn, yyline, new String(yytext()));}
. {return new Symbol(Token.PERROR, yycolumn, yyline, new String(yytext()));}

%%
"+" { printf("SUMA\n"); }
"-" { printf("RESTA\n"); }
"*" { printf("MULTIPLICACION\n"); }
"/" { printf("DIVISION\n"); }
"|" { printf("VALOR ABSOLUTO\n"); }
[0-9]+ { printf("NUMERO %s\n", yytext); }
\n { printf("FIN DE LINEA\n"); }
[ \t] { }
. { printf("Carácter desconocido %s\n", yytext); }
%%

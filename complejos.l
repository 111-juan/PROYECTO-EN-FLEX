%{
#include <stdio.h>
%}

%%

[+-]?[0-9]+      { printf("\"%s\" es un número entero.\n", yytext); }
[+-]?[0-9]*\.[0-9]+  { printf("\"%s\" es un número decimal.\n", yytext); }
[+-]?[0-9]*\.?[0-9]+[ij]  { printf("\"%s\" es un número complejo.\n", yytext); }
[	]+            { /* Ignorar espacios y saltos de línea */ }
[A-Za-z]+      { printf("\"%s\" contiene un caracter desconocido.\n", yytext); }
.              { printf("\"%s\" contiene un caracter desconocido.\n", yytext); }

%%

int main() {
    printf("Ingrese números para clasificar (Ctrl+D para salir):\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}

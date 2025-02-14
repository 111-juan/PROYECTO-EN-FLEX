%{
#include <stdio.h>
#include <string.h>
#include <ctype.h>

int chars = 0;
int words = 0;
int lines = 0;
int in_word = 0;
%}
%%

[a-zA-Z]+ {
    words++;
    chars += strlen(yytext);
}

\n+ {
    chars += yyleng;
    lines += yyleng;
    in_word = 0;
}

[ \t]+ {
    chars += yyleng;
    in_word = 0;
}

. {
    chars++;
}

%%
int main(int argc, char **argv)
{
    yylex(); // Llama al analizador léxico generado por Flex
    printf("%8d%8d%8d\n", lines, words, chars);
    return 0; // En C moderno, main() debe devolver un int
}

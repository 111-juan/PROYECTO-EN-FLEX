/* English -> Spanish */
%%
"dog"         { printf("perro"); }
"apple"       { printf("manzana"); }
"expensive"   { printf("caro"); }
"transport"   { printf("transporte"); }
"sweet"       { printf("dulce"); }
"butterfly"   { printf("mariposa"); }
"elevator"    { printf("ascensor"); }
"computer"    { printf("computador"); }
"street"      { printf("calle"); }
"house"       { printf("casa"); }

. { printf("%s", yytext); }
%%

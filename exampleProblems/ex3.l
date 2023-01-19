%{
#include<stdio.h>
%}
%%
auto|double|if|static|break|else|int|struct|case|enum|long|switch|char|extern|near|type|while|default|do|goto|signed|unsigned  printf("Keyword :\t %s \n", yytext);
. ;
\n ;
%%
int yywrap()
{
return 1;
}
int main()
{
yyin = fopen("input.txt", "r");
yylex();
fclose(yyin);
return 0;
}

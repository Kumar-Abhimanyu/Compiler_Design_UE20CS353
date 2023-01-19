%{
#include<stdio.h>
%}
%%
..*	ECHO;
\n	ECHO;
%%
yywrap()
{
return 1;
}
int main()
{
printf("Enter the string:\n");
yylex();
return 0;
}

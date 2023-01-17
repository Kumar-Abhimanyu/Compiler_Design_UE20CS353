%{include<stdio.h> 
%}
%%
"hi" {printf("Bye");}
.*	{printf("wrong");}
%%
yywrap()
{
return 1;
}

int main()
{
printf("Enter the string: ");
yylex();
return 0;
}


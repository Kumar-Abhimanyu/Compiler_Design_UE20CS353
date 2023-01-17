%{
	int nchar, nword, nline;
%}
%%
\n 	{nline++; }
[^\t ^\n]+ {nword++, nchar+=yyleng;}
%%
int yywrap()
{
return (1);
}

int main()
{
yyin = fopen("input.txt", "r");
yylex();
printf("Number of characters: %d\nNumber of words: %d\nNumber of lines: %d\n", nchar, nword, nline);
fclose(yyin);
return 0;
}
	

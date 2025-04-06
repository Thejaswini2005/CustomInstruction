%{
#include "parser.tab.h"
#include <string.h>
%}

%%

[a-zA-Z_][a-zA-Z0-9_]*     { yylval.str = strdup(yytext); return IDENTIFIER; }
[0-9]+                     { yylval.str = strdup(yytext); return NUMBER; }

"="                        { return ASSIGN; }
"*"                        { return MUL; }
"+"                        { return ADD; }
"-"                        { return SUB; }
"("                        { return LPAREN; }
")"                        { return RPAREN; }
";"                        { return SEMICOLON; }

[ \t\n\r]+                 { /* skip whitespace */ }
.                          { return yytext[0]; }  // Catch-all for any unexpected character

%%

int yywrap(void) {
    return 1;
}

%{ 
    #include <stdio.h>
    #include <stdlib.h>
    #include "y.tab.h"        // obtained from yacc file
    
    int i;
    #define border printf("\n"); for(i=0; i<=80; ++i) { putchar('-'); } printf("\n");
    int yyerror(char *errorMsg);
    void success(char *successMsg);
%}

%%

\n return (LINE);

"print" return (PRINT);
"and"|"assert"|"break"|"class"|"def"|"del"|"elif" return (KEYWORD);
"else"|"except"|"exec"|"finally"|"for"|"from"|"global" return (KEYWORD);
"if"|"import"|"in"|"is"|"lambda"|"not"|"or"|"pass"|"raise" return (KEYWORD);
"return"|"try"|"while"|"with"|"yield" return (KEYWORD);


"'"|"+"|"-"|"*"|"//"|"%"|"=="|"="|"<="|">="|"<"|">"|"is"|"("|")"|"{"|"}"|"["|"]" return (OPERATORS);

[0-9]+                  return NUMBER;
[_a-zA-Z][_a-zA-Z0-9]*  return ID ;

[ \t]                   ; 

[0-9]*|[0-9]*"."[0-9]*e[-|+][0-9]*|[a-z]* return (LITERAL);
"."|","|";"|":" return (DELIMITERS);


.                       { printf("\nunidentified token %s\n", yytext);  exit(1); }

%%

int main(int argc, char *argv[]) {
    printf("\n--------------------------- PYTHON Code PARSER ---------------------------\n");
    FILE *file;
    file=fopen("vaar","r");
    if(!file)
    {
       printf("could not open the file");
       exit(0);
                  
    } 
    yyin=file; 
    yyparse();
    yylex(); 
    return 0;
}


void success(char *successMsg) {
    fprintf(stderr, "\n%s\n", successMsg);
    border;
}

int yyerror(char *errorMsg){
    fprintf(stderr, "\n%s\n", errorMsg);
    border;
}

int yywrap() {
  return 1;
}

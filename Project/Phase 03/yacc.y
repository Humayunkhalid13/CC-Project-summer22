%{
    #include <stdio.h>
    int yydebug=1;
    int yylex(void);
    
    int i;
    #define border printf("\n"); for(i=0; i<=80; ++i) { putchar('-'); } printf("\n");
    int yyerror(char *errorMsg);
    void success(char *successMsg);
%}

// tokens
%token ID NUMBER 
%token OPERATORS DELIMITERS LITERAL
%token PRINT KEYWORD LINE



%%

/* Parser Grammar */

start: stmt DELIMITERS{
            success("This is a python Code\n");
            YYACCEPT; 
        };
        

stmt:  display | method | loop | KEYWORD| if | ID ;


display: PRINT op ID op |
         PRINT op NUMBER op;

method : KEYWORD opid opid;

loop: KEYWORD ID KEYWORD ID |
      KEYWORD ID KEYWORD NUMBER;

opnum: NUMBER OPERATORS| OPERATORS NUMBER OPERATORS;    

opid: OPERATORS ID | ID OPERATORS;

op: OPERATORS OPERATORS;

if: KEYWORD ID opnum NUMBER


%%

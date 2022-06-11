%{
#include<stdio.h>
int id=0,key=0,op=0,digit=0;
%}

ke (if|else|return|main|include|break|else|while|switch)
op [+|_|=|*|/]
digit [0-9]
id [_a-z][_a-zA-Z0-9]*

%%
{digit} digit++;
{ke} key++;
{id} id++;
{op} op++;

";" printf("digit=%d, key=%d, id=%d, op=%d",digit,key,id,op);
%%
int main()
{
    yylex();
    return 0;
}
int yywrap()
{
    return 0;
}
%{
    #include<stdio.h>
    int let=0,num=0,vow=0;
%}

%%
[aeiouAEIOU] vow++;
[0-9] num++;
[a-zA-Z] let++;
; printf("vow= %d, num= %d, let=%d",vow,num,let);
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
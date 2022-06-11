%{
    #include<stdio.h>
    int a,b,c;

%}

%%
a printf("enter the value of a: "); scanf("%d",&a);
b printf("enter the value of b: "); scanf("%d",&b);
c printf("the add is %d",a+b);

%%
int main(){

    yylex();
    return 0;
}
int yywrap()
{
    return 0;
}
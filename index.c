#include<stdio.h>

int main(){
	int a,b,c;
	scanf("%d %d", &a, &b);

	while(a!=b){
	   if(a>b){
		c = a;
		a = b;
		b = c;
	}
	   else{
	c = a;
	a = b;
	b = c;
}
	}
    printf("PGCD = %d", a);
 return 0;
}
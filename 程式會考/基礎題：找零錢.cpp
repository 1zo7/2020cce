#include <stdio.h>
int main()
{
	int n;
	scanf("%d",&n);
	printf("%d=50*%d+5*%d+1*%d\n", n, n/50, (n%50)/5, (n%50)%5);
}

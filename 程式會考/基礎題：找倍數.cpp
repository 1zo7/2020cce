#include <stdio.h>
int main()
{
	int a[10], i, ans=0;
	for(i=0; i<=9; i++){
		scanf("%d", &a[i]);
		if(a[i]%3 == 0) ans++;
	}
	printf("%d\n", ans);
}

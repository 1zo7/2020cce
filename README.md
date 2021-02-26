# 2020cce
程式設計作業

## 基礎題：找零錢
```c
#include <stdio.h>
int main()
{
	int n;
	scanf("%d",&n);
	printf("%d=50*%d+5*%d+1*%d\n", n, n/50, (n%50)/5, (n%50)%5);
}
```

## 基礎題：因數個數
```c
#include <stdio.h>
int main()
{
	int n,ans=0;
	scanf("%d", &n);
	for(int i=1;i<=n;i++){
		if(n%i==0) ans++;
	}
	printf("%d\n", ans);
}
```

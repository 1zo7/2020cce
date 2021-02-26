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
## 基礎題：找倍數
```c
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
```

## 基礎題：整數轉換為等級
```c
#include <stdio.h>
int main()
{
	int n;
	scanf("%d", &n);
	if(n>=90) printf("A\n");
	else if(n<90 && n>=80) printf("B\n");
	else if(n<80 && n>=60) printf("C\n");
	else printf("F\n");
}
```

## 進階題：分式化簡
```c
#include <stdio.h>
int main()
{
    int a, b, temp;

    scanf("%d%d", &a, &b);

    if( a > b ){
        for(int i=1; i<=b; i++){
            if( a % i == 0 && b % i == 0) temp = i;
        }
    }
    else if( b > a ){
        for(int i=1; i<=a; i++){
            if( a % i == 0 && b % i == 0) temp = i;
        }
    }
    a = a / temp;
    b = b / temp;

    printf("%d%d", a, b);
}
```

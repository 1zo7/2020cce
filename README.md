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
![基礎題：找零錢 ](https://github.com/1zo7/2020cce/blob/gh-pages/%E5%9F%BA%E7%A4%8E%E9%A1%8C%EF%BC%9A%E6%89%BE%E9%9B%B6%E9%8C%A2.png?raw=true)

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
![基礎題：因數個數](https://github.com/1zo7/2020cce/blob/gh-pages/%E5%9F%BA%E7%A4%8E%E9%A1%8C%EF%BC%9A%E5%9B%A0%E6%95%B8%E5%80%8B%E6%95%B8.png?raw=true)

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
![基礎題：找倍數](https://github.com/1zo7/2020cce/blob/gh-pages/%E5%9F%BA%E7%A4%8E%E9%A1%8C%EF%BC%9A%E6%89%BE%E5%80%8D%E6%95%B8%20.png?raw=true)

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
![基礎題：整數轉換為等級](https://github.com/1zo7/2020cce/blob/gh-pages/%E5%9F%BA%E7%A4%8E%E9%A1%8C%EF%BC%9A%E6%95%B4%E6%95%B8%E8%BD%89%E6%8F%9B%E7%82%BA%E7%AD%89%E7%B4%9A.png?raw=true)

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

    printf("%d %d\n", a, b);
}
```
![進階題：分式化簡](https://github.com/1zo7/2020cce/blob/gh-pages/%E9%80%B2%E9%9A%8E%E9%A1%8C%EF%BC%9A%E5%88%86%E5%BC%8F%E5%8C%96%E7%B0%A1.png?raw=true)

## 利用 int *p 來改變 n1變數的值
```c
#include <stdio.h>
int main()
{
	int n1=10, n2=20, n3=30;
	printf("n1:%d n2:%d n3:%d\n", n1, n2, n3);
	
	int *p = &n1;
	*p = 200;
	printf("n1:%d n2:%d n3:%d\n", n1, n2, n3);
}
```
![week02-1](https://github.com/1zo7/2020cce.github.io/blob/gh-pages/week02-1.png?raw=true)

## 利用 int *p2 來改變 n3 變數的值
```c
#include <stdio.h>
int main()
{
	int n1=10, n2=20, n3=30;
	printf("n1:%d n2:%d n3:%d\n", n1, n2, n3);

	int *p = &n1;
	*p = 200;
	printf("n1:%d n2:%d n3:%d\n", n1, n2, n3);

	int *p2 = &n3;
	*p2 = 300;
	printf("n1:%d n2:%d n3:%d\n", n1, n2, n3);
}
```
![week02-2](https://github.com/1zo7/2020cce.github.io/blob/gh-pages/week02-2.png?raw=true)

## 利用 p2=p 讓address位址換掉 *p2=400 就會換往其他地方送400
```c
#include <stdio.h>
int main()
{
	int n[3]={10, 20, 30};
	printf("n[0]:%d n[1]:%d n[2]:%d\n", n[0], n[1], n[2]);

	int *p = &n[0];
	*p = 200;
    printf("n[0]:%d n[1]:%d n[2]:%d\n", n[0], n[1], n[2]);
	int *p2 = &n[2];
	*p2 = 300;
    printf("n[0]:%d n[1]:%d n[2]:%d\n", n[0], n[1], n[2]);

	p2 = p;
	*p2 = 400;
    printf("n[0]:%d n[1]:%d n[2]:%d\n", n[0], n[1], n[2]);
}

```
![week02-3](https://github.com/1zo7/2020cce.github.io/blob/gh-pages/week02-3.png?raw=true)

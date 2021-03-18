## 利用 int *p 來改變 n1變數的值
```C
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
```C
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
```C
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

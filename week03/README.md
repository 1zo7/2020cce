## int *p = &a[2]; *p=222; p = p + 2; *p = 666;
#include <stdio.h>
int main()
{
    int a[5] = {0, 10, 20, 30, 40};
    int *p = &a[2];
    *p = 222;

    p = p + 2;
    *p = 666;
}

## int *p = &a[2]; *p=222; p = p + 2; *p = 666; p--; *p=555;
#include <stdio.h>
int a[5] = {0, 10, 20, 30, 40};
void printAll()
{
    for(int i=0; i<5; i++) printf("%d ", a[i]);
    printf("\n");
}
int main()
{
        printAll();
    int *p = &a[2];
    *p = 222;
        printAll();
    p = p + 2;
    *p = 666;
        printAll();
    p--;
    *p = 555;
        printAll();
}

## 把int * p = &a[2] ; 的 p 心中的值(心裡放住址的小紙條) 印出來 printf("%d\n", p); 
#include <stdio.h>
int a[5] = {0, 10, 20, 30, 40};
void printAll()
{
    for(int i=0; i<5; i++) printf("%d ", a[i]);
    printf("\n");
}
int main()
{
        printAll();
    int *p = &a[2];
    *p = 222;
        printAll();
        printf("p心裡小紙條記的值是:%d\n", p);
    p = p + 2;
    *p = 666;
        printAll();
        printf("p心裡小紙條記的值是:%d\n", p);
    p--;
    *p = 555;
        printAll();
        printf("p心裡小紙條記的值是:%d\n", p);
}

##  int * p; p = (int *) malloc( sizeof(int) * 10 );
#include <stdio.h>
#include <stdlib.h>

int a[10];
int main()
{
    int b[10];

int *p = (int*) malloc(sizeof(int)*10);

return 0;
}

## 字串排序-選擇排序
```c
char *p1, *p2;
char line[4][10]={"jkl", "ghi", "def", "abc"};
char temp[10];
int main() {
  int n=4;
  for(int i=0; i<n; i++){
    for(int j=i+1; j<n; j++){
      p1=line[i]; p2=line[j];
      if( strcmp(line[i],line[j]) > 0 ){
        strcpy(temp, line[i]);
        strcpy(line[i], line[j]);
        strcpy(line[j], temp);
      }
    }
  }
  
  for(int i=0; i<n; i++){
    printf("%s\n", line[i]);
  }
  
  return 0;
}
```

## 字串排序-泡泡排序
```c
char *p1, *p2;
char line[4][10]={"jkl", "ghi", "def", "abc"};
char temp[10];
int main() {
  int n=4;
  for(int k=0; k<n-1; k++){
    for(int i=0; i<n-1; i++){
      p1=line[i]; p2=line[i+1];
      if( strcmp(line[i],line[i+1]) > 0 ){
        strcpy(temp, line[i]);
        strcpy(line[i], line[i+1]);
        strcpy(line[i+1], temp);
      }
    }
  }
  
  for(int i=0; i<n; i++){
    printf("%s\n", line[i]);
  }
  
  return 0;
}
```

## 字串排序-快速排序
```c
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
//char line[100][10];
int compare( const void * p1, const void * p2 ){
    char * s1 = (char*) p1;
    char * s2 = (char*) p2;
    
    return strcmp( s1, s2);
}
char line[4][10]={"decline","proper","majority","bullet"};
//char temp[10];
int main()
{
    int n=4;
    //scanf("%d", &n);
    //for(int i=0; i<n; i++){
    //    scanf("%s", line[i]);
    //}
    
    qsort( line, n, sizeof(char[10]), compare);
    
    for(int i=0; i<n; i++){
        printf("%s\n", line[i]);
    }
}
```

##List of Conquests 
```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char name[2000][80];

int compare( const void * p1, const void * p2 )
{
	return strcmp( (char*)p1, (char*)p2 );
}
int main()
{
	int n;
	scanf("%d", &n);
	
	char trash[80];
	for(int i=0; i<n; i++){
		scanf("%s", name[i]);
		gets( trash);
	}
	
	
	qsort( name, n, 80, compare);
	
	int ans=1;
	printf("%s ", name[0]);
	for(int i=0; i<n-1; i++){
		if( strcmp( name[i], name[i+1]) !=0 ){
				printf("%d\n", ans);
			printf("%s ", name[i+1]);
			
		
			ans=1;
		}
		else ans++;
	}
	printf("%d\n", ans);
}
```

##Hardwood species
```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char tree[1000000][32];
int compare ( const void *p1, const void *p2 ){
  return strump( (char*)p1, (char*)p2 );
}

int main()
{
  int T;
  scanf("%d\n\n", &T); //兩個\ 代表會把後面兩個跳行吃跳
  
  int N=0;
  for(int i=0;  ; i++){
    char* now = gets( tree[i] ); //一次讀一整行 用gets
    if( now == NULL ){ //讀入失敗
      N=i;
      break;
    }
  }
  
  qsort ( tree , N, 32, compare );
  
  printf("%s ", tree[0] );
  int ans=1; //從1開始數 新的一筆
  
  for(int i=0; i<N-1; i++){
    if( strcmp( tree[i], tree[i+1] )!= 0 ){ //不同時
      printf("%.4f\n", 100*( ans/(float)N ) );
      printf("%s ", tree[i+1]);
      ans = 1;
      }
    else ans++; //相同時
    }
   printf("%.4f\n", 100*( ans/(float)N ) ); 
}
```

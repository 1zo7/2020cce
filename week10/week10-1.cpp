#include <stdio.h>
#include <stdlib.h>
#include <string.h>
char line[1000];
char tree[1000000][32];
int compare ( const void * p1, const void * p2 ){
	return strcmp((char*) p1, (char*) p2 );
}
int main()
{
	int T;
	scanf("%d\n\n", &T); //step001-讀資料
	for(int t=0; t<T; t++){ //step001-讀資料 gets()一整行
		int N=0;
		while( gets(line) != NULL){ //step002-讀失敗會變NULL
			if( strcmp(line,"") == 0 ) break; //空行也要離開

			strcpy( tree[N], line ); //step004-把樹的名字 放到tree
			//printf("&s\n", line);
			N++; //step003-統計樹的數目
		}
		//printf("有幾棵樹? %d\n", N);
		//step005-照樹的名字來排序 => 陣列在哪裡
		qsort ( tree, N, 32, compare ); //step005-qsort

		if(t>0) printf("\n");//step007-前面有空白行
		int ans=1;//新的開始
		printf("%s ", tree[0]);
		for(int i=0; i<N-1; i++){
			if( strcmp( tree[i], tree[i+1]) == 0 ){//相同
				ans++;
			}else{
				printf("%.4f\n", 100*ans/(float)N);//printf("%d\n", ans);
				ans=1;
				printf("%s ", tree[i+1]); //新的開始
			}
			//printf("%s\n", tree[i] ); //step004-把tree[i]印出來
		}
		printf("%.4f\n", 100*ans/(float)N);
	}
}

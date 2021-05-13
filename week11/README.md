## UVA10062 Tell me the frequencies!
```c
#include <stdio.h>
char line[2000];
int ans[256]; // step03統計有幾個字母 ex ans[65]=3 表示'A'有3次
int main()
{ // step01輸入 一次1整行 很多一整行
	for (int t=0; gets(line); t++){
		for(int i=0; i<256; i++) ans[i]=0; //清乾淨
		for(int i=0; line[i]!=0; i++){ //step04字串的迴圈
			char c= line[i]; // step04第i個字母
			ans[ c ] ++; // step04統計到 ans[]裡面
		}
		//step02輸出 對應印出來
		if( t > 0 ) printf("\n");
		for(int i=0; i<256; i++){ // step05真的印出來
			if( ans[i] > 0 ) printf("%d %d\n", i, ans[i]);
		}
	}
}
```

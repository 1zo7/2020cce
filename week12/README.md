## UVA10062 Tell me the frequencies! 
```c
#include <stdio.h>
char line[2000];
int main()
{
	for (int t=0; gets( line ); t++){ //Input
		int ans[256]={}; //{0,0,0,0,..., 0, 0, 0...}
		char c[256]={}; //{0,1,2,3,....,65,66,67...}
		for(int i=0; i<256; i++) c[i]=i;
		
		for(int i=0; line[i]!=0; i++){
			char c = line[i]; 
			ans[c] ++; 
		} //字串的 for迴圈
		for(int i=0; i<256; i++){ //左手i //排序
			for(int j=i+1; j<256; j++){ //右手j
				if( ans[i] > ans[j] ){
					int temp=ans[i]; //交換ans[]
					ans[i]=ans[j];
					ans[j]=temp;
					char t=c[i]; //交換字母
					c[i]=c[j];
					c[j]=t;
				}
				if( ans[i] == ans[j] && c[i]<c[j]){
					int temp=ans[i]; //交換ans[]
					ans[i]=ans[j];
					ans[j]=temp;
					char t=c[i]; //交換字母
					c[i]=c[j];
					c[j]=t;
				}
			}
		}
		
		
		if( t > 0 ) printf("\n");
		for(int i=0; i<256; i++){ //Output
			if( ans[i] > 0 ) printf("%d %d\n", c[i], ans[i]);
		}
	}
}

```

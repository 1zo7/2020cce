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
	scanf("%d\n\n", &T); //step001-Ū���
	for(int t=0; t<T; t++){ //step001-Ū��� gets()�@���
		int N=0;
		while( gets(line) != NULL){ //step002-Ū���ѷ|��NULL
			if( strcmp(line,"") == 0 ) break; //�Ŧ�]�n���}

			strcpy( tree[N], line ); //step004-��𪺦W�r ���tree
			//printf("&s\n", line);
			N++; //step003-�έp�𪺼ƥ�
		}
		//printf("���X�ʾ�? %d\n", N);
		//step005-�Ӿ𪺦W�r�ӱƧ� => �}�C�b����
		qsort ( tree, N, 32, compare ); //step005-qsort

		if(t>0) printf("\n");//step007-�e�����ťզ�
		int ans=1;//�s���}�l
		printf("%s ", tree[0]);
		for(int i=0; i<N-1; i++){
			if( strcmp( tree[i], tree[i+1]) == 0 ){//�ۦP
				ans++;
			}else{
				printf("%.4f\n", 100*ans/(float)N);//printf("%d\n", ans);
				ans=1;
				printf("%s ", tree[i+1]); //�s���}�l
			}
			//printf("%s\n", tree[i] ); //step004-��tree[i]�L�X��
		}
		printf("%.4f\n", 100*ans/(float)N);
	}
}

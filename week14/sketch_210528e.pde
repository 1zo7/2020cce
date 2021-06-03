//樂透 49球抽6球
//int []a={1,2,3,4,...49}寫到49很累
int []a = new int[49]; //Java的陣列宣告好用
void setup(){
  size(400,400);
  textSize(30);
  for(int i=0; i<49; i++) a[i] =i+1; //人類:1
                        //電腦:0
  for(int i=0; i<10000; i++){ //作弊 抽獎前先排好
    int i1 = (int)random(49);
    int i2 = (int)random(49);
    int temp = a[i1];
    a[i1] = a[i2];
    a[i2] = temp;
  }
}
int N=0;
void draw(){
  background(#AAE6B4);
  for(int i=0; i<N; i++){
    fill(255); ellipse(50+i*50, 100, 40, 40); //做白色球
    textAlign(CENTER,CENTER); //對齊文字:中,中
    fill(0); text( a[i], 50+i*50, 100);
  }
}
void mousePressed(){
  N++; //數字早就決定了
}

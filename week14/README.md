## 用亂數random(60)取出小於60的數
```java
void setup(){ //設定 只做一次
  size(300,200);
  float ans = random(60); //取亂數<60的數字
  textSize(30);
  text( ans,0,30);
}
```

## 利用mosuePressed()來改亂數
```java
//整數無條件捨去
//用mousePressed互動
void setup(){ //設定 只做一次
  size(300,200);
  textSize(30);
}
int ans = 0;
void draw(){
  background(#AAE6B4);
  //int ans = (int)random(60); //強制轉型casting
  text( ans,30,30); //跳太快了
}
void mousePressed(){
  ans = (int)random(60);
}
```

## 亂數洗牌
```java
//int a[]={1,2,3,4,5,6,7,8,9,10}; /C,C++
int []a={1,2,3,4,5,6,7,8,9,10}; //JAVA
void setup(){ //設定 只做一次
  size(400,200);
  textSize(30);
}
void draw(){
  background(#AAE6B4);
  for(int i=0; i<10; i++){
    text( a[i], i*40, 100);
  }
}
void mousePressed(){
  int i1 = (int)random(10);
  int i2 = (int)random(10);
  int temp = a[i1];
  a[i1] = a[i2];
  a[i2] = temp;
}
```

## 大樂透 使用作弊的方法
```java
//樂透 49球抽6球
//int []a={1,2,3,4,...49}寫到49很累
int []a = new int[49]; //Java的陣列宣告好用
void setup(){
  size(400,200);
  textSize(30);
  for(int i=0; i<49; i++) a[i] =i+1; //人類:1
}                        //電腦:0
void draw(){
  background(#AAE6B4);
  for(int i=0; i<6; i++){
    text( a[i], i*50, 100);
  }
}
void mousePressed(){
  for(int i=0; i<10000; i++){
    int i1 = (int)random(49);
    int i2 = (int)random(49);
    int temp = a[i1];
    a[i1] = a[i2];
    a[i2] = temp;
  }
}
```

## 球會慢慢掉出來的大樂透
```java
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
```

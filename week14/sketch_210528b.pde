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

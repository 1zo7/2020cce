void setup(){//設定 只做一次
  size(400,200);
  fill(255,0,0);
  textSize(40);
}
float shift=0, v=10;//global變數
void mousePressed(){
  v = random(10)+5;
}
void draw(){//畫圖 每秒60次
  background(166,196,234);
  //float start = radians(90+mouseX);
  //float stop  = radians(180+mouseX);
  float start = radians(90+shift);
  float stop  = radians(180+shift);
  arc(100,100,180,180, start, stop);
  if(v>0.0001){//還有速度就轉動
    shift+=v;//轉動的速度
    v=v*0.99;//慢慢減速
  }
  text(shift, 200, 100);//印出shift
  text(v, 200, 150);//印出轉動的速度
}

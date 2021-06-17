void setup(){//設定 只做一次
  size(400,200);
  fill(255,0,0);
  textSize(40);
}
int degree=0;
void draw(){//畫圖 每秒60次
  background(166,196,234);
  arc(100,100,180,180, radians(90), radians(180));
}

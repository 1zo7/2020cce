void setup(){ //設定 只做一次
  size(400,200);
  textSize(40); //字型大小
}

void draw(){ //畫圖,每秒60次
  background(#83E8BD);
  int s = second(); // 秒鐘
  text(s,100,100);
}

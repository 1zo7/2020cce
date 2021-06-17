void setup(){//設定 只做一次
  size(400,200);
}
void draw(){//畫圖 每秒60次
  background(166,196,234);
  fill(255);//白
  ellipse(200,100,180,180);
 //畫圓     圓心   寬  高
  fill(255,0,0);//白
  float stop=mouseX/50.0; //浮點數
  text(stop,300,100);
  arc(200,100,180,180, 0, stop);
 //    圓心    寬  高
}

## 畫圓
```java
void setup(){//設定 只做一次
  size(400,200);
}
void draw(){//畫圖 每秒60次
  background(166,196,234);
  ellipse(200,100,180,180);
 //畫圓     圓心   寬  高
}
```

## 畫圓弧
```java
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
```

## 使用radians()
```java
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
```

## 繼上題 利用shift移動量的變數,讓它每秒轉動60度
```java
void setup(){//設定 只做一次
  size(400,200);
  fill(255,0,0);
  textSize(40);
}
float shift=0;
void draw(){//畫圖 每秒60次
  background(166,196,234);
  //float start = radians(90+mouseX);
  //float stop  = radians(180+mouseX);
  float start = radians(90+shift);
  float stop  = radians(180+shift);
  arc(100,100,180,180, start, stop);
  shift+=1;
}
```

## 越轉越慢 用v調整轉速,最後會停下來
```java
void setup(){//設定 只做一次
  size(400,200);
  fill(255,0,0);
  textSize(40);
}
float shift=0, v=10;//global變數
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
```

## 亂數v
```java
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
```

## 轉盤分格填顏色
```java
void setup()
{
  size(400,200);
  fill(255,0,0);
  textSize(40);  
}

float shift = 0;
float v = 0; //一開始速度0

void mousePressed()
{
//v = random(10);   // 0...10.0 , 10以下
  v = random(10)+5; // 5...15.0 
}            // +5 保底有5 讓v介於5~15 

void draw()
{
  background(128,128,128);
  for( int i = 0 ; i < 24 ; i++ )
  {
    if( i % 3 == 0 ) fill(0); //黑
    if( i % 3 == 1 ) fill(255); //白
    if( i % 3 == 2 ) fill(200,180,0); //黃綠色
    float start = radians(    0+shift+i*360/24); 
    float stop = radians(360/24+shift+i*360/24); //跟start永遠差15度(360/24)
    arc(100,100, 180,180, start,stop);
  
  }
 
  if( v > 0.1 )//還有速度時,就轉動
  {
    shift += v; //轉動速度
    v = v * 0.99; //會慢慢減速
    text(shift,200,100); //印出shift
    text(v,200,150); //印出轉動速度
  }
}
```

## 點一下會增加次數
```c
void setup(){//只做一次設定
size(1024,400);
}
void draw(){//每秒狂做60次
if(mousePressed)background(255,255,0);
else background(250,125,25);
textSize(50);//字的大小 設50號字
text(a,100,100);//將a在100,100畫出來
}
int a=0; //外部變數
void mousePressed(){//按下去時,會呼叫這個函式
a++;
}
```
## 現在時間
```c
void setup(){
  size(1024,400);
}
void draw(){
  background(15,162,249);
  textSize(50);
  int h = hour();//小時
  int m = minute();//分鐘
  int s = second();//秒
  text("Now"+ h +":"+ m +":"+ s,100,100);
}//     字串  數 字串 數 字串 數字
```
## 現在時間的總秒數
```c
void setup(){
  size(1024,400);
  textFont(createFont("標楷體",50));
}
void draw(){
  background(15,162,249);
  textSize(50);
  int h = hour();//小時
  int m = minute();//分鐘
  int s = second();//秒
  text("Now"+ h +":"+ m +":"+ s,100,100);
 //     字串  數 字串 數 字串 數字
 int total = h * 60 * 60 + m * 60 + s;//總秒數
 text("總秒數:" + total,100,200);
 }
```
## 剩下時間
```c
void setup(){
 size(1024,400);
 textFont(createFont("標楷體",50));
}
void draw(){
 background(15,162,249);
 textSize(50);
 int h = hour();//小時
 int m = minute();//分鐘
 int s = second();//秒
 fill(255,0,0);//填充墨水的色彩
 text("Now"+ h +":"+ m +":"+ s,100,100);//現在時間
//     字串  數 字串 數 字串 數字
int total = h * 60 * 60 + m * 60 + s;//現在時間的總秒數
int total12=12*60*60+0*60+0;//目標時間的總秒數
text("總秒數:" + total,100,200);
int ans = total12-total;
int hh =ans/60/60%60,mm=ans/60%60,ss=ans%60;
text("還剩下:"+hh+":"+mm+":"+ss,100,300);
}


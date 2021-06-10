## 複習倒數計時
```java
void setup(){ //設定 只做一次
  size(400,200);
  textSize(40); //字型大小
}

void draw(){ //畫圖,每秒60次
  background(#83E8BD);
  int s = second(); // 秒鐘
  text(s,100,100);
}
```

## 9到0的倒數計時
```java
//秒數s:0,1,2,3.....9
//     59,58,57.....0 (幫手)59-s
//倒數 :9,8,7,6,5,4,3,2,1,0

void setup(){ // 設定 只做一次

  size(400,200);
  textSize(40); //字型大小
}

void draw(){
   background(#808080);
  int s = second(); //秒鐘
  //text(59-s,100,100);
  text(9-s%10,100,100);
}
// 原: 0,1,2,3,4,5,6,7,8,9
// 倒: 9,8,7,6,5,4,3,2,1,0
```

## Sound播出聲音
```java
//發出聲音,要用外掛 Processing的Sound
//這裡叫PDE:Processing Developing Environment
import processing.sound.*;
SoundFile player;
//tada.mp3檔 拉進來
void setup(){
  size(400,200);
  player = new SoundFile( this, "tada.mp3");
}

void draw(){
  background(#B2F5D8);
}
void mousePressed(){
  player.play();
}
```

## 每秒播60次聲音
```java
//從第二步的程式開始增加
import processing.sound.*;
SoundFile player;
//tada.mp3檔 拉進來
void setup(){
  size(400,200);
  textSize(40);
  player = new SoundFile( this, "tada.mp3");
}

void draw(){
  background(#B2F5D8);
  int s = second();
  text(9-s%10,100,100);
  if( 9-s%10 == 0 ) player.play();
}//0秒的時候,if()會進去60次
```

## 更好的聲音播放
```java
//從第二步的程式開始增加
import processing.sound.*;
SoundFile player;
//bell.mp3檔 拉進來
void setup(){
  size(400,200);
  player = new SoundFile( this, "bell.mp3");
}

void draw(){
  background(#B2F5D8);
}
void mousePressed(){
  if(player.isPlaying()){
    player.stop(); 
  }
  else{
    player.play(); 
  }
}
```

## 更更更好的聲音播放
```java
//從第二步的程式開始增加
import processing.sound.*;
SoundFile player;
//tada.mp3檔 拉進來
void setup(){
  size(400,200);
  textSize(40);
  player = new SoundFile( this, "tada.mp3");
}

void draw(){
  background(#B2F5D8);
  int s = second();
  text(9-s%10,100,100);
  if( 9-s%10 == 0 && !player.isPlaying()){
    player.play();
  }
}
```

## 網頁計時器
```p5.js
function setup(){ //設定 只做一次
  createCanvas(400,200);
  textSize(40); //字型大小
}

function draw(){ //畫圖,每秒60次
  background(255,173,173);
  let s = second(); // 秒鐘
  text(s,100,100);
}
```

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

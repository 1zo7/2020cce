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

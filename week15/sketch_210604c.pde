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

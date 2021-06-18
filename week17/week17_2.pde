void setup(){
  size(400,200);
  textSize(40);
}
String line=" ";
String Q="hello";
void draw(){
  background(0);
  text("Q: "+Q  , 100,100);
  text("You:"+line , 100,150);
}
void mousePressed(){
  line = line + "a";
}

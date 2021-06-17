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

## String line宣告一個字串變數(變數可以變動)
```java
void setup(){
  size(400,200);
  textSize(40);
}
String line="word";
void draw(){
  background(0);
  text("hello", 100,100);
  text(line,100,150);
}
```

## 利用字串的+ 把2個字串接起來變更長的字串 同時在mousePressed()裡用line=line+新的字母 也能變長
```java
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
```

## 延序上一步 把mousePressed()改成keyPressed() 同時line = line + key; 讓按的字母可變長
```java
void setup(){
  size(400,200);
  textSize(40);
}
String line=" ";
String Q="hello";
void draw(){
  background(0);
  text("Q: "+Q  , 100,100);
  text("A:"+line , 100,150);
}
void keyPressed(){
  line = line + key;
}
```

## 如果key==BACKSPACE時 就要用 line = line.substring(0, len-1)來讓字串變短 而 int len=line.length()會得到字串的原本長度 還有判斷小寫字母、大寫字母
```java
void setup(){
  size(400,200);
  textSize(40);
}
String line=" ";
String Q="hello";
void draw(){
  background(0);
  text("Q: "+Q  , 100,100);
  text("A:"+line , 100,150);
}
void keyPressed(){
  int len = line.length();
  if( key>='a' && key<='z' )line = line + key;
  if( key>='A' && key<='Z' )line = line + key;
  if( key == BACKSPACE )line = line.substring(0,len-1);
}
```

## substring(開始,結束) 很像for(int i=0;i小於26;i++)會做26次的右邊界不包含 且會有當機的問題 用len大於0來保護len不要變負的
```java
void setup(){
  size(400,200);
  textSize(40);
}
String line=" ";
String Q="hello";
void draw(){
  background(0);
  int len = line.length(); text( len,100,50);
  text("Q: "+Q  , 100,100);
  text("A:"+line , 100,150);
}
void keyPressed(){
  int len = line.length(); 
  if( key>='a' && key<='z' )line = line + key;
  if( key>='A' && key<='Z' )line = line + key;
  if( key == BACKSPACE &&len>0)line = line.substring(0,len-1);
}
```

## 在keyPressed()裡,加入 if(key==ENTER) 去算分數 算分數要用字串比對 line.equals(Q)==true 成立時 score++ 否則 score-- 再印出分數
```java
void setup(){
   size(400,200);
   textSize(40);
}
String line="";
String Q="hello";
void draw(){
   background(0);
   text("Score: "+score,100,50);
   text("Q: "+Q,100,100);
   text("A: "+line,100,150);
}
int score=0;
void keyPressed(){
  int len=line.length();
   if(key>='a'&&key<='z')line = line + key;
   if(key>='A'&&key<='Z')line = line + key;
   if(key == BACKSPACE && len>0)line = line.substring(0,len-1);
   if(key == ENTER){
      if(line.equals(Q)==true ){
        score++;
      }else score --;
   }
}
```
## 利用陣列 讓題目變多 String [] Q = {好多字串} 再配 int Qi=0 來挑選 Q[Qi] 的字來考試 答對時 Qi++ 並加分, 小心,Qi太大會當掉哦
```java
void setup(){
   size(400,200);
   textSize(40);
}
String line="";
String []Q={ "hello", "world", "other"};
int Qi=0;
void draw(){
   background(0);
   text("Score: "+score,100,50);
   text("Q: "+Q[Qi],100,100);
   text("A: "+line,100,150);
}
int score=0;
void keyPressed(){
  int len=line.length();
   if(key>='a'&&key<='z')line = line + key;
   if(key>='A'&&key<='Z')line = line + key;
   if(key == BACKSPACE && len>0)line = line.substring(0,len-1);
   if(key == ENTER){
      if(line.equals(Q[Qi])==true ){
        score++;
        Qi++;
        line = "";
      }else score --;
   }
}
```

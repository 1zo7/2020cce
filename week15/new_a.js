function setup(){ //設定 只做一次
  createCanvas(400,200);
  textSize(40); //字型大小
}

function draw(){ //畫圖,每秒60次
  background(255,173,173);
  let s = second(); // 秒鐘
  text(s,100,100);
}

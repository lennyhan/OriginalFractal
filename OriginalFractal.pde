//public void setup(){
//  size(600, 600);
//}
//public void draw(){

//  circleCellular(0, 0, 0);
//}


//public void circleCellular(int x, int y, int selection) {
//  rect(x,y,50,50);
//  circle(x,y, 25);
//  int nextX = x+25;
//  int nextY = y;
//  int nextSelection = selection;
  
//  if (nextX > 600){
//   nextX = 0;
//   nextY = y+10;
//  }
//  if (nextSelection % 2 == 0)
//  {fill(255,202,229); nextSelection = 1;} else{ fill(209,244,255); nextSelection = 0; }
  
//  if (nextY < 650)
//  circleCellular(nextX, nextY, nextSelection);
//}


int sizO = 480;
int xO = 250;
boolean backtrack = false;
public void setup()
{
  strokeWeight(5);
  size(500, 500);
  stroke(238, 175, 97);
  fill(#fceea7);
}

public void draw()
{
  if (backtrack)
    background(0);
  if (backtrack == false)
    background(#87ceeb);
  myFractal(xO, 250, sizO);
  sizO+=5;
  xO+=5;
  if (backtrack == false)
  {
    sizO+=5;
    xO+=5;
  }
  if (sizO>6000)
    backtrack = true;
  if (backtrack)
  {
    sizO-=10;
    xO-=10;
  }
  if (sizO<50)
    backtrack = false;
}

public void myFractal(int x, int y, int siz)
{
  ellipse(x, y, siz, siz);
  if (siz>10)
  {
    myFractal(x-siz/2, y, siz/2);
    myFractal(x-siz/3, y, siz/3);
  }
}

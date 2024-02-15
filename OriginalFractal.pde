public void setup(){
  size(600, 600);
}
public void draw(){

  circleCellular(0, 0, 0);
}


public void circleCellular(int x, int y, int selection) {
  rect(x,y,50,50);
  circle(x,y, 25);
  int nextX = x+25;
  int nextY = y;
  int nextSelection = selection;
  
  if (nextX > 600){
   nextX = 0;
   nextY = y+10;
  }
  if (nextSelection % 2 == 0)
  {fill(255,202,229); nextSelection = 1;} else{ fill(209,244,255); nextSelection = 0; }
  
  if (nextY < 650)
  circleCellular(nextX, nextY, nextSelection);
}

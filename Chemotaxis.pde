Mover [] dots;
void setup(){
  size(500,500);
  background(0);
 // noLoop();
  dots = new Mover[10];
  for(int i = 0; i < dots.length;i++)
  {
    dots[i] = new Mover();
  }
}
void draw(){
background(0);
  for(int i = 0; i < dots.length;i++)
  {
 dots[i].move() ;
 dots[i].show();
  }
}
class Mover{
  int x, y, myColor;
  Mover(){
   // x = y = 250;
 myColor = color((int)(Math.random()*250), (int)(Math.random()*250), 255);
  
  }
  void move(){
    frameRate(10);
  x = x + (int)(Math.random()* 8 )-4 ;
     y = y + (int)(Math.random()*8)-4 ;
  }
  void show(){
 
    int face = (int)(Math.random()*2)+1;
    frameRate(10);
    if(face == 1){
    fill(myColor);
    ellipse(x+250,y+250,30,30);
    fill(0);
    ellipse(x+245,y+250,5,5);
    ellipse(x+255,y+250,5,5);
    rect(x+245,y+255,8,1);
    }
    else {
          fill(myColor);
    ellipse(x+250,y+250,30,30);
      fill(0);
      rect(x+240,y+250,5,1);
      rect(x+250,y+250,5,1);
      rect(x+245,y+255,8,1);
    }
    
  }
  }

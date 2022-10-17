int totaldots = 0;
void setup()
{
  size(300, 300);
  noLoop();
}
Die bob;
void draw()
{
  bob = new Die(10, 10);

  
  for (int x = 0; x <= height; x+=10) {
    for (int y = 0; y <= width; y+=10) {
      bob = new Die(x, y);
      bob.show();
    }
    
  }
  fill(0);
textSize(30);
textAlign(CENTER,CENTER);
text("Total dots: "+ totaldots, 525,660);


}


void mousePressed()
{
  redraw();
  totaldots = 0;
}
class Die //models one single dice cube
{
  //member variable declarations here
  //boolean Face;
  int n;
  int myX, myY;
  int size;

  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
    size = 50;
  }
  void roll()
  {
    int dice = (int)(Math.random()*6)+1;
    n = dice;
    
    
        
    
    
  }
  void show()
  {
   
    
    fill(255, 0, 0);
    rect(myX, myY, 10, 10);
    fill(0);
    if (n == 1) {
      totaldots += 1;
      ellipse(myX-size/2, myY-size/2, 1,1);
    }

    if (n == 2) {
      totaldots += 2;
      ellipse(myX-size/4, myY-size/4, 1,1);
      ellipse(myX-3*size/4, myY-3*size/4, 1,1);
    }

    if (n == 3) {
      totaldots += 3 ;
      ellipse(myX-size/4, myY-size/4, 1,1);
      ellipse(myX-size/2, myY-size/2, 1,1);
      ellipse(myX-3*size/4, myY-3*size/4, 1,1);
    }
    if (n == 4) {
       totaldots += 4;
      ellipse(myX-size/4, myY-size/4, 1,1);
      ellipse(myX-3*size/4, myY-size/4, 1,1);
      ellipse(myX-size/4, myY-3*size/4, 1,1);
      ellipse(myX-3*size/4, myY-3*size/4, 1,1);
    }
    if (n == 5) {
       totaldots += 5 ;
      ellipse(myX-size/4, myY-size/4, 1,1);
      ellipse(myX-3*size/4, myY-size/4, 1,1);
      ellipse(myX-size/4, myY-3*size/4, 1,1);
      ellipse(myX-3*size/4, myY-3*size/4, 1,1);
      ellipse(myX-size/2, myY-size/2, 1,1);
    }
    if (n == 6) {
       totaldots += 6 ;
      ellipse(myX-size/4, myY-size/4, 1,1);
      ellipse(myX-3*size/4, myY-size/4, 1,1);
      ellipse(myX-size/4, myY-3*size/4, 1,1);
      ellipse(myX-3*size/4, myY-3*size/4, 1,1);
      ellipse(myX-3*size/4, myY-size/2, 1,1);    
      ellipse(myX-size/4, myY-size/2, 1,1);
    }
  }
 
    }
    
 

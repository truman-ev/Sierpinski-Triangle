PImage alien;

int len = 400;          
int small = 400;              //to go back to reverse, small = 5

int alienSize = 100;
int alienX = 299;
int alienY = 150;

public void setup()
{
  size(700,700);
  
  alien = loadImage("alien2.png");
}
public void draw()
{
  background(59, 133, 173);
  noStroke();
  fill(230, 208, 119);
  ellipse(350, 750, 1000, 400);
  
  alien.resize(alienSize,alienSize);
  image(alien, alienX, alienY);
  
  fill(196, 178, 104);    
  triangle(150,600, 350,200, 550,600);
  
  fill(209, 189, 109);
  sierpinski(150, height-100, len);
  
  fill(161, 147, 92);
  triangle(150,600, 130,900, 550,600);
  
  fill(230, 197, 69);
  ellipse(600, 0, 150, 150);
  
  
}
//public void mouseDragged()//optional
//{

//}

public void mousePressed()
{
  small-=small/2;                 //to go back to reverse, +=
  if(small <=10)                 //to go back to reverse, >=400                
  {
    small = 10;    //to go back to reverse, 400
    alienSize = 700;
    alienX = -1;
    alienY = -150;

  }
  
  alienSize += 100;
  alienX -= 50;
  alienY -= 50;
  
  
  
}

public void sierpinski(int x, int y, int len) 
{
  if(len <= small)
  {
    triangle(x,y, x+len,y, x+len/2,y-len);        //for wider, x+len+80, x+len/2+40
  }
  else
  {
    sierpinski(x, y, len/2);      //correct
    sierpinski(x+len/2, y, len/2);                  
    sierpinski(x+len/4, y-len/2, len/2);
  }
}

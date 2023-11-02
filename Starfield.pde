//your code here
Particle[] dog;
OddballParticle[] taffys;
void setup()
{
  //your code here
  size(500,500);
  noStroke();
  dog = new Particle[300];
  taffys = new OddballParticle[60];
  for(int i = 0; i<taffys.length; i++)
  taffys[i] = new OddballParticle();
  for(int i = 0; i<dog.length; i++)
  dog[i] = new Particle();
}
void draw()
{
  background(0);
  for(int i = 0; i<dog.length; i++)
  {
    dog[i].move();
    dog[i].show();
  }
  for(int i = 0; i<taffys.length; i++)
  {
    taffys[i].move();
    taffys[i].show();
  }
  //your code here
}
class Particle
{
  double myX, myY;
  int myColor;
  double mySpeed;
  double myAngle;
  Particle()
  {
    myX = 250;
    myY = 250;
   // myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    myColor = color(255,255,255);
    mySpeed = (double)(Math.random()*2);
    myAngle = (double)((Math.random()*2)*Math.PI);
  }
  void move()
  {
   myX = myX + Math.cos(myAngle)*mySpeed;
   myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 8, 8);
  }
}//end of class
class OddballParticle extends Particle //inherits from Particle
{
  OddballParticle(){
    myX = 250;
    myY = 250;
    //myColor = color(#F6FA1E);
    myColor = color((int)(Math.random()*230), (int)(Math.random()*200), (int)(Math.random()*150));
    mySpeed = (int)(Math.random()*9);
    myAngle = (double)((Math.random()*2)*Math.PI);
  }
   void move()
  {
   myX = myX + Math.cos(myAngle)*mySpeed + (double)(Math.random()*2);
   myY = myY + Math.sin(myAngle)*mySpeed + (double)(Math.random()*2);
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 40, 20);
    fill(#F6FF00);
    ellipse((float)myX-25, (float)myY-25, 10, 10);
    fill(#F6FF00);
    ellipse((float)myX+25, (float)myY-25, 10, 10);
    fill(#7E5303);
    rect((float)myX-5, (float)myY-5, 7, 7);
  }
  //your code here
}

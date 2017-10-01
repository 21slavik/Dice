

int sum = 0;
void setup()
{
  size(800, 900);
  noLoop();
  background(100);
}
void draw()
{
  for (int x = 15; x < 750; x = x +70)
  {
    for (int y = 15; y < 700; y = y + 70)
    {
      Die bob= new Die(x, y);
      bob.show();
    }
  }
  fill(0, 255, 0);
  rect(365, 740, 100, 50);
  fill(255);
  text("Total" + sum, 390, 755, 50);
  //your code here
}
void mousePressed()
{
  sum = (int)((Math.random()*500)+123);
  redraw();
}
class Die //models one single dice cube
{
  int dieNum;
  int myX, myY;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    dieNum = (int) ((Math.random()*6)+1);
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 60, 60, 10);
    fill(0);
    if (dieNum == 1)
    {
      ellipse(myX + 30, myY + 30, 10, 10);
    } else if (dieNum == 2)
    {
      ellipse(myX + 20, myY + 20, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    } else if (dieNum == 3)
    {
      ellipse(myX + 20, myY + 20, 10, 10);
      ellipse(myX + 30, myY + 30, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    } else if (dieNum == 4)
    {
      ellipse(myX + 20, myY + 20, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 20, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 20, 10, 10);
    } else if (dieNum == 5)
    {
      ellipse(myX + 20, myY + 20, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 20, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 20, 10, 10);
      ellipse(myX + 30, myY + 30, 10, 10);
    } else 
    {
      ellipse(myX + 20, myY + 20, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 30, myY + 40, 10, 10);
      ellipse(myX + 20, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 20, 10, 10);
      ellipse(myX + 30, myY + 20, 10, 10);
    }
  }
}

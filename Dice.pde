int sum = 0;
void setup()
{
	size(800,900);
	noLoop();
	background(0);
}
void draw()
{
	for (int x = 15; x < 750; x = x +70)
	{
		for (int y = 15; y < 700; y = y + 70)
		{
			Die bob= new Die(x,y);
			bob.show();
		}
	}
	fill(0,0,255);
	rect(365,740,100,50);
	fill(255);
	text("Total" + sum,390,755,50);
	//your code here
}
void mousePressed()
{
	redraw();
	sum = 0;
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
	  if(Math.random()*6)<1)
	  {
	  	dieNum = 1;
	  }
	  else if ((Math.random()*6)<2)
	  {
	  	dieNum = 2;
	  }
	  else if ((Math.random()*6)<3)
	  {
	  	dieNum = 3;
	  }
	  else if ((Math.random()*6)<3)
	  {
	  	dieNum = 4;
	  }
	  else if ((Math.random()*6)<4)
	  {
	  	dieNum = 5;
	  }
	  else if ((Math.random()*6)<5)
	  {
	  	dieNum = 5;
	  }
	  else
	  {
	  	dieNum = 6;
	  }
	  sum = sum + 6dieNum;
	}
	void show()
	{
	fill(255);
	rect(myX,myY,60,60,10);
	fill(0);
	if (dieNum == 1)
	{
		ellipse(myX + 20,myY + 30,10,10);
	}
	else if (dieNum == 2)
	{
		ellipse(myX + 20,myY + 20,10,10);
		ellipse(myX + 40,myY + 40,10,10);
	}
	else if (dieNum == 3)
	{
		ellipse(myX + 20,myY + 20,10,10);
		ellipse(myX + 30,myY + 30,10,10);
		ellipse(myX + 40,myY + 40,10,10);
	}
	else if (dieNum == 4)
	{
		ellipse(myX + 20,myY + 20,10,10);
		ellipse(myX + 40,myY + 40,10,10);
		ellipse(myX + 20,myY + 40,10,10);
		ellipse(myX + 40,myY + 20,10,10);
	}
	else if (dieNum == 5)
	{
		ellipse(myX + 20,myY + 20,10,10);
		ellipse(myX + 40,myY + 40,10,10);
		ellipse(myX + 20,myY + 40,10,10);
		ellipse(myX + 40,myY + 20,10,10);
		ellipse(myX + 30,myY + 30,10,10);
	}
	else (dieNum == 6)
	{
		ellipse(myX + 20,myY + 20,10,10);
		ellipse(myX + 40,myY + 40,10,10);
		ellipse(myX + 30,myY + 30,10,10);
		ellipse(myX + 20,myY + 40,10,10);
		ellipse(myX + 40,myY + 20,10,10);
		ellipse(myX + 30,myY + 20,10,10);
	}
}

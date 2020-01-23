int lenSize = 10;

public void setup()
{
	size(500, 500);
	background(0);
	frameRate(10);
}

public void draw()
{

	if(lenSize < 500)
		lenSize ++;
	if(lenSize % 2 == 0)
		fill(255, 0, 255);
	else 
		fill(0, 255, 255);

	sierpinski(0, 500, lenSize);
}

public void mouseDragged()//optional
{
	
}

public void mousePressed()
{
	if(lenSize == 500)
	{
		background(0);
		lenSize = 10;
	}
}

public void sierpinski(int x, int y, int len) 
{

	if(len <= 10)
		triangle(x, y, x + len / 2, y + len, x - len / 2, y + len);
	else 
	{
		/*
		if(y %  4 == 0)
			fill(255, 0, 0);
		else if(y % 3 == 0)
			fill(0, 255, 0);
		else if(y % 2 == 0)
			fill(0, 0, 255);
		else
			fill(255, 255, 0);
		*/
		
		sierpinski(x, y, len / 2);
		sierpinski(x + len / 2, y, len / 2);
		sierpinski(x + len / 4, y - len / 2, len / 2);
	}
}

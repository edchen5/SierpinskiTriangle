int lenSize = 10;

public void setup()
{
	size(500, 500);
	background(0);
}

public void draw()
{

	if(lenSize < 515)
		lenSize ++;

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
		sierpinski(x, y, len / 2);
		sierpinski(x + len / 2, y, len / 2);
		sierpinski(x + len / 4, y - len / 2, len / 2);
	}
}

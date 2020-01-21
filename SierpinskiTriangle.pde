int size = 10;

public void setup()
{
	size(500, 500);
	background(0);
}

public void draw()
{
	if(size < 500)
		size ++;

	sierpinski(0, 500, size);
}

public void mouseDragged()//optional
{
	
}

public void mousePressed()
{
	if(size == 500)
	{
		background(0);
		size = 10;
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
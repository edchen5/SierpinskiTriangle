
public void setup()
{
	size(500, 500);
	background(0);
	//sierpinski(75, 400, 400);
}

public void draw()
{
	/*
	for(int i = 0; i < 80; i++)
		sierpinski(250, 250, i);
	*/
}

public void mouseDragged()//optional
{
	sierpinski(mouseX, mouseY, 50);
}

public void keyPressed()
{
	background(0);
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
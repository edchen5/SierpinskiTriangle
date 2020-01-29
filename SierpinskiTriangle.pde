int lenSize = 10;
boolean change = false;
int carpetSize = 10;

public void setup()
{
	size(500, 500);
	background(0);
}

public void draw()
{
	if(change == false && lenSize < 515)
		lenSize ++;

	if(change == true && carpetSize < 250)
		carpetSize ++;

	if(change == false)
		sierpinski(0, 500, lenSize);
	else 
	{
		background(0);
		carpet(250, 250, carpetSize);
	}
}

public void mouseDragged()//optional
{
	
}

public void keyPressed()
{
	if(lenSize >= 515 || carpetSize >= 250)
	{
		background(0);
		lenSize = 10;
		carpetSize = 10;
	}
}

public void mousePressed()
{
	if(change == false)
	{
		background(0);
		lenSize = 10;
		change = true;
	}
	else  
	{
		background(0);
		carpetSize = 10;
		change = false;
	}
}

public void sierpinski(int x, int y, int len) 
{
	if(change == false && lenSize < 172)
		fill(255, 0, 0);
	else if(change == false && lenSize < 343)
		fill(0, 255, 0);
	else if(change == false && lenSize > 343)
		fill(0, 0, 255);

	if(len <= 10)
		triangle(x, y, x + len / 2, y + len, x - len / 2, y + len);
	else 
	{	
		sierpinski(x, y, len / 2);
		sierpinski(x + len / 2, y, len / 2);
		sierpinski(x + len / 4, y - len / 2, len / 2);
	}
}

public void carpet(int x, int y, int len) 
{

	if(change == true && carpetSize < 84)
		fill(255, 0, 0);
	else if(change == true && carpetSize < 168)
		fill(0, 255, 0);
	else if(change == true && carpetSize > 168)
		fill(0, 0, 255);

	if(len <= 10)
		rect(x, y, len, len);
	else 
	{	
		carpet(x - 2 * len / 3, y, len / 3);
		carpet(x + 2 * len / 3, y, len / 3);
		carpet(x + 2 * len / 3, y - 2 * len / 3, len / 3);
		carpet(x, y - 2 * len / 3, len / 3);
		carpet(x, y + 2 * len / 3, len / 3);
		carpet(x + 2 * len / 3, y + 2 * len / 3, len / 3);
		carpet(x - 2 * len / 3, y - 2 * len / 3, len / 3);
		carpet(x - 2 * len / 3, y + 2 * len / 3, len / 3);
	}
}

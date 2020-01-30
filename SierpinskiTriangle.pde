int lenSize = 10;
boolean change = false;

int r = (int)(Math.random() * 255);
int g = (int)(Math.random() * 255);
int b = (int)(Math.random() * 255);

int carpetSize = 10;

public void setup()
{
	size(600, 600);	
}

public void draw()
{
	background(r, g, b);

	if(change == false && lenSize < 600)
		lenSize += 5;

	if(change == true && carpetSize < 305)
		carpetSize += 5;

	if(change == false)
	{
		strokeWeight(0);
		stroke(0);
		backgroundCarpet(1, 595, 600);
		
		fill(0);
		strokeWeight(2);
		stroke(255);
		sierpinski(5, 595, lenSize);
	}
	else 
	{
		stroke(0);
		carpet(300, 300, carpetSize);
	}
}

public void mouseDragged()//optional
{
	
}

public void keyPressed()
{
	if(lenSize >= 600 || carpetSize >= 305)
	{
		background(0);
		lenSize = 10;
		carpetSize = 10;
		r = (int)(Math.random() * 255);
		g = (int)(Math.random() * 255);
		b = (int)(Math.random() * 255);
	}
}

public void mousePressed()
{
	r = (int)(Math.random() * 255);
	g = (int)(Math.random() * 255);
	b = (int)(Math.random() * 255);

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
	if(len <= 10)
		triangle(x, y, x + len / 2, y + len, x - len / 2, y + len);
	else 
	{	
		sierpinski(x, y, len / 2);
		sierpinski(x + len / 2, y, len / 2);
		sierpinski(x + len / 4, y - len / 2, len / 2);
	}
}

public void backgroundCarpet(int x, int y, int len) {
	
	if (len <= 5)
		rect(x, y, len, len);
	else 
	{
		backgroundCarpet(x, y, len / 3);
		backgroundCarpet(x, y - len / 3, len / 3);
		backgroundCarpet(x, y - 2 * len / 3, len / 3);
		backgroundCarpet(x + len / 3, y, len / 3);
		backgroundCarpet(x + len / 3, y - 2 * len / 3, len / 3);
		backgroundCarpet(x + 2 * len / 3, y, len / 3);
		backgroundCarpet(x + 2 * len / 3, y - len / 3, len / 3);
		backgroundCarpet(x + 2 * len / 3, y - 2 * len / 3, len / 3);
	}
}

public void carpet(int x, int y, int len) 
{
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
	

int size = 20;
int dir = 1;
int min = 15;
public void setup()
{
  background(255);
  size(1000, 1000);
  sierpinski(250, 250, size);
}
public void draw()
{
  background(255);
  translate(-size / 2, -size / 2);
  sierpinski(width/2, height/2, size);
  size += dir;
  if(size == width || size == 0)
  {
    dir *= -1;
  }
  System.out.println(size);
}

public void sierpinski(double x, double y, double len) 
{
  
  double x1, x2, x3, y1, y2, y3;
  x1 = x;
  y1 = y;
  x2 = x + len;
  y2 = y;
  x3 = x + len/2;
  y3 = y + Math.sqrt( (Math.pow(len, 2) - Math.pow((len/2), 2)));
  fill(0, 0, 0);
  if(len <= min)
  {
    triangle((float) x1, (float) y1,(float)  x2,(float)  y2, (float) x3, (float) y3);
    //System.out.println("draw");
  }
  else
  {
    //triangle((float) x1, (float) y1,(float)  x2,(float)  y2, (float) x3, (float) y3);
    //System.out.println("drawn");
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y + len/2, len/2);
  }
}

int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;

void setup()
{
  size(300, 300);
  strokeWeight(1);
  background(0);
  stroke((int)(Math.random()*100) + 156);
  frameRate(200);
}

void draw()
{
  endX = startX + (int)(Math.random()*18 - 9);
  endY = startY + (int)(Math.random()*12);
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
}

void mousePressed()
{
  double rand = Math.random();
  int strokeColor = (int)(rand*100)+156;
  stroke(strokeColor);
  background((int)(rand*50));
  strokeWeight((float)(1 + rand * 3));
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
}

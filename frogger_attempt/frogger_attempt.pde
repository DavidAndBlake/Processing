int frogX = 200;
int frogY = 200;
car vehicle = new car(20, 30, 60);
car vehicle2 = new car (40, 130, 90);
void setup(){
size(400, 400);


}
void draw(){
background(0,100,70);
ellipse(frogX, frogY, 30, 30);
fill(0,200,50);
boundaryRules();
vehicle.display();
vehicle2.display();
fill (0, 0, 0);
}
void keyPressed(){
if(key == CODED){
  if(keyCode == UP)
  {
    frogY = frogY - 5;
  }
  else if (keyCode == DOWN)
  {
    frogY = frogY + 5; 
  }
   else if(keyCode == RIGHT)
      {
      frogX = frogX + 5;
      }
      else if(keyCode == LEFT)
      {
        frogX = frogX - 5;
      }
   }
}
void boundaryRules()
{
  if (frogY > 400)
  {
    frogY = 400;
  }
  if (frogY < 0)
  {
    frogY = 0;
  }
  if (frogX > 400)
  {
    frogX = 400;
  }
  if (frogX < 0)
  {
    frogX = 0;
  }
}
class car
{
int x;
int y;
int size = 50;
car (int x, int y , int size)
{
  this.x = x;
  this.y = y;
  this.size = size;
}
  void display() 
  {
    fill(0,255,0);
    rect(x ,y, size, 50);
  }

}


PImage up;
PImage down;
PImage left;
PImage right;
int start;
PImage flash;
int arrowHeight;
int arrowRiser;
int r =(int)random(4);
arrowObject upA;
arrowObject downA;
arrowObject leftA;
arrowObject rightA;
arrowObject flashA;
void setup(){ 
size(1000,800);
 int s = 0;
up = loadImage("up.png");
down = loadImage("down.png");
left = loadImage("left.png");
right = loadImage("right.png");
flash = loadImage ("flash.png"); 
upA = new arrowObject(up,525,800);
 downA = new arrowObject(down,290,800);
 leftA = new arrowObject(left,50,800);
 rightA = new arrowObject(right,750,800);
start = millis();

}
class arrowObject
{
  int x;
  int y;
  PImage arrow;
  
  arrowObject(PImage arrow, int x, int y)
  {
this.arrow=arrow;
this.x=x;
this.y=y;
 
 }
int gety(){
 return y;
 }
 void move(){
   image(arrow,x,y);
    y -= 5;
 }
 void display(){
 image(arrow,x,y);
 }
}
void keyPressed(){

  if(key == CODED){
      if(keyCode == UP)
      {
    // print(" hi");
       flashA=new arrowObject(flash, 490,25);
flashA.display();
      score();
      }
      if(keyCode == DOWN)
      {
        flashA=new arrowObject(flash, 255,25);
flashA.display();
     score();
      }
      if(keyCode == RIGHT)
      {
 flashA=new arrowObject(flash, 715,25);
flashA.display();
     score();
      }
      if(keyCode == LEFT)
      {
       flashA=new arrowObject(flash, 15,25);
flashA.display();
     score();
      }
  }
      
}

void draw ()
{
  background (51,238,170);
  image(up, 525, 30);
  image(down, 290, 30);
  image(left, 50, 30);
  image(right, 750, 30);
  int timer = millis()-start;

 
 // image(up, 525, 800-arrowRiser);
  //image(down, 290,800-arrowRiser);
  //image(left, 50, 800-arrowRiser);
 //image(right, 750, 800-arrowRiser);
// polygon(3,5,2,66,8,3);
arrowRiser=arrowRiser+5;

if (timer>1)
{
upA.move();
downA.move();
rightA.move();
downA.move();
}
}

void score(){
 
 if (abs (upA.gety()-flashA.gety()) <= 50){
print("good") ;
textSize(64);
text("good", 10, 30); 
fill(0, 102, 153);
textSize(64);
text(s, 10, 30); 
fill(0, 102, 153);

 }
if (abs (downA.gety()-flashA.gety()) <= 50){
print("good") ;
 }
 if (abs (leftA.gety()-flashA.gety()) <= 50){
print("good") ;
 }
 if (abs (rightA.gety()-flashA.gety()) <= 50){
print("good") ;
 }
}
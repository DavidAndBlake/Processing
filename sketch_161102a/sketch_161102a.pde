PImage up;
PImage down;
PImage temp;

PImage left;
PImage right;
int upP;
int downP;
int leftP;
int rightP;
int arrowHeight;
int arrowRiser;
int r =(int)random(4);
void setup(){ 
size(1000,800);
up = loadImage("up.png");
down = loadImage("down.png");
left = loadImage("left.png");
right = loadImage("right.png");

}
void draw ()
{
  background (51,238,170);
  image(up, 525, 30);
  image(down, 290, 30);
  image(left, 50, 30);
  image(right, 750, 30);
 
  image(up, 525, 800-arrowRiser);
   image(down, 290,800-arrowRiser);
  image(left, 50, 800-arrowRiser);
  image(right, 750, 800-arrowRiser);
// polygon(3,5,2,66,8,3);
arrowRiser=arrowRiser+5;
}



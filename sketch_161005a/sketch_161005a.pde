//1. Create a constructor for you hackertyper to initialize your x, y, lineLength and lineSpace

class HackerTyper {
  int xOffset;
  int yOffset;
  int y = 0; 
  int x = 0;
  int index = 0;
  int lineLength = 4;
  int lineSpace = 30;
  int scroll = 100;
  int cursorColor = 255;
  ArrayList<String> text = new ArrayList<String>();
  ArrayList<String> hackerText = new ArrayList<String>();

/* Constructor goes here. */
HackerTyper(int x, int y , int lineLength, int lineSpace){

}
  /* (Dont change) Adds text to you HackerTyper */
  void add(String t) {
    hackerText.add(t);
  }

  /*(Dont change) prints out hacker text */
  void printNext() {
    text.add(hackerText.get(index%hackerText.size()));
    index++;
  }

  /*diplays the access granted popup*/
  void accessGranted() {
    //11. fill in this method to diplany an access granted method on the screen.
    text("Access Granted", width/2, height/2);
  }

  /*diplays the access denied popup*/
  void accessDenied() {
    //12. fill in this method to display and access denied message on the screen.
    text("Access Denied", width/2, height/2);
  }

  /*displays the text*/
  void displayText() {
    //set the size and color of your text
    arrayStuff();
    drawCursor(xOffset, yOffset);
    yOffset=0;
  }

  /*draws cursor*/
  void drawCursor(int xOffset, int offset) {
    strokeWeight(1);

    //13. use the millis() to make your cursor blink every half second

    stroke(0, cursorColor, 0);
    line(x+xOffset, y+offset+5, x+xOffset, y+offset-18);
  }

  /*(Dont change) This does array stuff*/
  void arrayStuff() {
    yOffset = 0;
    xOffset = 0; 
    for (String str : text) {
      if (text.indexOf(str)%lineLength==0) {
        yOffset+=lineSpace;
        xOffset=0;
      } 
      text(str, x+xOffset, y+yOffset);
      if (y+yOffset > height-50) {
        y-=scroll;
      }
      xOffset += textWidth(str);
    }
  }
}

public HackerTyper ht= new HackerTyper(12, 13, 32, 23);



void setup() {
  //1. set the size of your canvas // if you're using processing 3 use fullScreen()
size(1950,1200);
  //2. Make a new instance of Hacker Typer as a member variable
  //3. Add some hacker text to your hackerTyper (Make it look hackerish!)
  ht.add("enter.//|"+ random(100000000) + "|\\doia-omniware557.//[631661.=lkd????////a"+ random(1000) + " wauiebfqwbyelkjergbljewguwberg"+ random(1000) + "68468awef984a6sd84f65e1rtg984r6hndf68h48tb14658fgj6d46fhg8/49t/4j69/4gh6bd8rh");

}
void draw() {
  //4. set the background of your screen
background(0,0,0);
  // 5. call the display text method
ht.displayText();


  //9. if the key counter variable is greater than 50 call the accesss denied method.
if (keyCounter>50){
  ht.accessDenied();
}
  //10. if the key counter is greater than 70 call the accesGranted method.
if (keyCounter>70){
ht.accessGranted();
}
}
//6. create a key pressed method
void keyPressed(){
  ht.printNext();
  keyCounter = keyCounter + 1;
}

//7. call the printNext method from your hacker typer in your keypressed method


//8.  make a member variable you number of keys pressed. and increment your key counter in the keyPressed method.
int keyCounter = 0;












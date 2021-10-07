void setup()
  {
      size(800,900);
      frameRate(1);
  }
Die bob;
void draw()  
  {  
    fill(255,255,255);
    rect(370,830,70,30);
    int sum = 0;
    for(int y = 0; y < 800; y+=50){
      for(int x = 0; x < 800; x+=50){
       bob = new Die(x,y);
       bob.show();
       sum+=bob.num;
      }
    }
    text("Total: "+ sum, 380, 850);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int num, myX, myY;
      
      Die(int x, int y) //constructor
      {
       num = (int)(Math.random()*6)+1;
       myX = x;
       myY = y;//variable initializations here
      }
      
      void show()
      {
       fill(255,255,255);
       rect(myX,myY,50,50,10);
       if (num == 1){
         fill(0);
         ellipse(myX+25,myY+25,10,10);
       }
       else if(num == 2){
         fill(0);
         ellipse(myX+40,myY+10,10,10); //top right
         ellipse(myX+10,myY+40,10,10);
       }
       else if(num == 3){
         fill(0);
         ellipse(myX+25,myY+25,10,10); // middle
         ellipse(myX+40,myY+10,10,10); //top right
         ellipse(myX+10,myY+40,10,10);
       }
       else if(num == 4){
         fill(0);
         ellipse(myX+40,myY+10,10,10); //top right
         ellipse(myX+10,myY+40,10,10); //bot left
         ellipse(myX+10,myY+10,10,10); //top left
         ellipse(myX+40,myY+40,10,10);
       }
       else if(num == 5){
         fill(0);
         ellipse(myX+25,myY+25,10,10); // middle
         ellipse(myX+40,myY+10,10,10); //top right
         ellipse(myX+10,myY+40,10,10); //bot left
         ellipse(myX+10,myY+10,10,10); //top left
         ellipse(myX+40,myY+40,10,10);
       }
       else{
         fill(0);
         ellipse(myX+40,myY+10,10,10); //top right
         ellipse(myX+10,myY+40,10,10); //bot left
         ellipse(myX+10,myY+10,10,10); //top left
         ellipse(myX+40,myY+40,10,10); //bot right
         ellipse(myX+10,myY+25,10,10); //left mid
         ellipse(myX+40,myY+25,10,10);
       }
      }
  }

class Rectangle {

  //fields
  color col;
  int x;
  int y;
  int w;
  int h;
  int speed;
  int wv;
  
  boolean moveRight;
   
  //constructor
  Rectangle(){
    //assign values to fields
    col = color(0 , 0, random(100,256),random(200));
    speed = x + 100;

    x = int(random(300,600));
    y = int(random(180,420));
    w = int(random(10,600));
    h = int(random(10,20));
    wv = int(random(20,60));
    
  }//brace of constructor
  
  
  //methods
  
  void drawRect(){
     noStroke();
     fill(col);
     
     rect(x,y,w,h);
 
  }
  
  void moveRect(boolean isRight){
     
     if(isRight){
     x += speed;
     w -= wv;
     }else{
      x -= speed;
      w -= wv;
     }
   }
   
   

   
  






}//the last curly brace of class Rectangle
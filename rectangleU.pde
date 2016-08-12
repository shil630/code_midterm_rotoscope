class RectangleU {

  //fields
  color col;
  int x;
  int y;
  int w;
  int h;
  int speed;
  int hv;
  
  boolean moveRight;
   
  //constructor
  RectangleU(){
    //assign values to fields
    col = color(random(150,256) , 0 , 0,random(150));
    speed = y + 100;

    x = int(random(260,500));
    y = int(random(180,360));
    w = -h + 200;
    h = int(random(10,600));
    hv = int(random(10,30));
    
  }//brace of constructor
  
  
  //methods
  
  void drawRect(){
     noStroke();
     fill(col);
     
     rect(x,y,w,h);
 
  }
  
  void moveRect(boolean isUp){
     
     if(isUp){
     y -= speed;
     h -= hv;
     }else{
      y += speed;
       h -= hv;
     }
   }
   
   

   
  






}//the last curly brace of class Rectangle
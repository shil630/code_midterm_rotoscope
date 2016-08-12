class Line {
   PVector positionX;
   PVector positionY;
   PVector velocity;
   color col;
   int weight;

  Line() {
    
    smooth();
    positionX = new PVector( random(100,150), random(0,100));
    positionY = new PVector( positionX.x +200, positionX.y+200); 
    velocity = new PVector(random(100,150), random(100,150)); 
    col = color(0 , 0, random(100,256),random(200));
    weight = int(random(1,10));
  
  
  }
  
  void drawLine(boolean isRight){
    if(isRight){
     strokeWeight(weight);
     stroke(col);
     line(positionX.x,positionX.y,positionY.x,positionY.y);
     positionX.add(velocity);
     positionY.add(velocity);
    }else{
     strokeWeight(weight);
     stroke(col);
     line(width-positionX.x,positionX.y,width-positionY.x,positionY.y);
     positionX.add(velocity);
     positionY.add(velocity);
    
    }
  
  }




























}
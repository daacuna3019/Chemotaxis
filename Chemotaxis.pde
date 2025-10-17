Bacteria [] bob;

void setup(){
  size(500,500);
   bob = new Bacteria[200];
  for(int i = 0; i < 200; i++){
  bob[i] = new Bacteria();
  }
}

void draw(){
  background(0);
  for(int i = 0; i < 200; i++){
  bob[i].move();
  bob[i].show();
  }
}

class Bacteria{
  color myC;
  float myX, myY;
  
  Bacteria(){
    myC = color((int)(Math.random()*255),0,0);
    myX = (int)(Math.random() * 500);
    myY = (int)(Math.random() * 500);
  }
  
  void show(){
   rectMode(CENTER);
   strokeWeight(2);
   stroke(200, 0, 0);
   fill(myC);
   ellipse(myX, myY, 30, 30);
   fill(225);
   stroke(0);
   strokeWeight(1);
   ellipse(myX - 7, myY, 10, 10);
   ellipse(myX + 7, myY, 10, 10);
   fill(0);
   ellipse(myX + 5, myY, 5, 5);
   ellipse(myX - 6, myY, 5, 5);
  
  }
  
  void move(){
    if(!(mouseY == 0 && mouseX == 0)){
       if(myY > mouseY){
         myY = myY + (int)(Math.random() * 7) - 4;
   }
       else if(myY <= mouseY){
         myY = myY + (int)(Math.random() * 7) - 2;
   }
       if(myX > mouseX){
         myX = myX + (int)(Math.random() * 7) - 4;
   }
       else if(myX <= mouseX){
         myX = myX + (int)(Math.random() * 7) - 2;
   }
  }
}//end Car class

}

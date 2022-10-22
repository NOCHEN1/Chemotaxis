float x;
float y;
float easing = 0.05;
Bacteria[] bob;
 void setup()   
 {     
   size(500,500);
   bob = new Bacteria[1000];
   for(int i = 0; i < bob.length; i++){
     bob[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   background(0);
   for(int i = 0; i < bob.length; i++){
     bob[i].show();
     bob[i].move();
   }
 }  
 class Bacteria    
 {     
   int myX,myY;
   Bacteria(){
     myX = 250;
     myY= 250;
   }
   void move(){
     myX = myX + (int)(Math.random()*30)-15;
     myY = myY + (int)(Math.random()*30)-15;
     float targetX = mouseX;
     float dx = targetX - myX;
     myX += dx * easing;
     float targetY = mouseY;
     float dy = targetY - myY;
     myY += dy * easing;
   }
   void show(){
     ellipse(myX,myY,10,10);
   }  
 }    

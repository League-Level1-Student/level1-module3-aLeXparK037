 int x = 250;
 int y = 250;
 int gravity = 1;
 int birdYvelocity = 35;
 int pipeMoveX = 1;
 int pipeX = 100;
 int upperPipeHeight = (int) random(100,400);
 int pipeGap = 100;
 int lowerY = upperPipeHeight + pipeGap;
 int lowerPipeHeight = 500 - lowerY;
 int score = 0;
 Boolean gameover = false;

void setup(){

 size(500,500); 
background(0,255,0);
  fill(0,255,0);
  stroke(0,255,0);
   rect(100,500,50,100);
   fill(0,0,255);
   
}

void draw(){
  if (gameover) {
   background(0,0,255);
   textSize(32);
   text("Game Over", 175,250);
  } else {
    
 
  
   background(0,255,0);
   
   rect(pipeX,0,50,upperPipeHeight);
   pipeX-=pipeMoveX;
   teleportPipes();
   
   rect(pipeX,lowerY,50,lowerPipeHeight);
   pipeX-=pipeMoveX;
   teleportPipes();
   
  ellipse(x,y,50,50);
  fill(255,0,0);
  y+=2; 
  
  if (pipeX == x){
      score += 1;
    }
    
     text("Score = " + score, 400,50);
  
  
  if (intersectsPipes() && !gameover){
    gameover = true;
    
    
  }
  }
}
void mousePressed(){
 y-=birdYvelocity; 
}
void teleportPipes(){
  if (pipeX==0){
     pipeX=500;
     upperPipeHeight = (int) random(100,400);
     lowerY = upperPipeHeight + pipeGap;
     lowerPipeHeight = 500 - lowerY;
   }
   
}
  boolean intersectsPipes() { 
         if (y < upperPipeHeight && x > pipeX && x < (pipeX+50)){
            return true; }
        else if (y>lowerY && x > pipeX && x < (pipeX+50)) {
            return true; }
        else { return false; }
        
  
}

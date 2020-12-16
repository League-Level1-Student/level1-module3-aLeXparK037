 int x = 250;
 int y = 250;
 int gravity = 1;
 int birdYvelocity = 10;
 int pipeMoveX = 1;
 int pipeX = 100;
 int upperPipeHeight = (int) random(100,300);
 int pipeGap = 100;
 int lowerY = upperPipeHeight + pipeGap;
 int lowerPipeHeight = 400 - upperPipeHeight;
void setup(){

 size(500,500); 
background(0,255,0);
  fill(0,255,0);
  stroke(0,255,0);
   rect(100,500,50,100);
   fill(0,0,255);
   
}

void draw(){
   background(0,255,0);
   
   rect(pipeX,0,50,upperPipeHeight);
   pipeX-=pipeMoveX;
   teleportPipes();
   
   rect(pipeX,400,50,lowerPipeHeight);
   pipeX-=pipeMoveX;
   teleportPipes();
   
  ellipse(x,y,50,50);
  fill(255,0,0);
  y+=1; 
 
}
void mousePressed(){
 y-=birdYvelocity; 
}
void teleportPipes(){
  if (pipeX==0){
     pipeX=500;
     upperPipeHeight = (int) random(100,400);
   }
}

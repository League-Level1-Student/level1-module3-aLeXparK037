int frogX = 400;
int frogY = 500;
Car carOne = new Car(50,100,50);
Car carTwo = new Car(600, 300,50);
Car carThree = new Car(600, 500,50);
 PImage back;
 PImage carLeft;
 PImage carRight;
 PImage frog;
 PImage youWin;

void setup(){
  size(800,600);
        back = loadImage("froggerBackground.png");
        back.resize(800,600);
        carLeft = loadImage("carLeft.png");
        carLeft.resize(160,100);
        carRight = loadImage("carRight.png");
        carRight.resize(160,100);
        frog = loadImage("frog.png");
        frog.resize(75,75);
        youWin = loadImage("You Win!.jpg");
        youWin.resize(800,600);
}

void draw(){
   background(back);
  fill(0,255,0);
  image(frog,frogX,frogY);
  carOne.displayRight();
  carTwo.displayLeft();
  carThree.displayLeft();
  carOne.Speedright();
  carTwo.Speedleft();
  carThree.Speedleft();
  
  if (intersects(carOne)){
    frogX = 400;
    frogY = 500;
  }
  if (intersects(carTwo)){
    frogX = 400;
    frogY = 500;
  }
  if (intersects(carThree)){
    frogX = 400;
    frogY = 500;
  }
  if (frogY<0){
 win();
  }
}

void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
          frogY -= 10;
          boundaries();
            //Frog Y position goes up
        }
        else if(keyCode == DOWN)
        {
          frogY +=10;
          boundaries();
            //Frog Y position goes down 
        }
        else if(keyCode == RIGHT)
        {
          frogX +=10;
          boundaries();
            //Frog X position goes right
        }
        else if(keyCode == LEFT)
        {
          frogX -=10;
          boundaries();
            //Frog X position goes left
        }
    }
}
void win(){
   image(youWin,0,0);
}
void boundaries(){
  if (frogX < 0){
   frogX = 0; 
  } else if (frogX > 800){
    frogX = 800;
  }
}


boolean intersects(Car car) {
 if ((frogY > car.getY() && frogY < car.getY()+50) &&
                (frogX > car.getX() && frogX < car.getX()+car.getSize())) {
   return true;
  }
 else  {
  return false;
 }
  }

class Car{
 int carX; 
 int carY;
 int carS;
void displayLeft(){
    image(carLeft,carX, carY);
}
void displayRight(){
  image(carRight,carX, carY);
}
void Speedleft(){
carX -= 3;
if (carX<0) {
  carX=800;
}
}
void Speedright(){
carX +=3;
if (carX>800){
  carX=0;
}
}
int getX(){
  return carX;
  }
  int getY(){
  return carY;
  }
  int getSize(){
  return carS;
  }
  
Car(int carX, int carY, int carS){
 this.carX = carX;
 this.carY = carY;
 this.carS = carS;
}

}

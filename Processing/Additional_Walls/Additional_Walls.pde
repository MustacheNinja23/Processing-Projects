Ball[] balls;
ArrayList<Wall> walls;;

float startX, startY;

void setup(){
  fullScreen();
  walls = new ArrayList<Wall>();
  
  walls.add(new Wall(0,0,20,height));
  walls.add(new Wall(20,0,width - 40,20));
  walls.add(new Wall(20,height-20,width - 20,20));
  walls.add(new Wall(width-20,0,20,height));
  
  balls = new Ball[100];
  
  for (int i = 0; i < balls.length; i++){
    float x = random(20,width-20);
    float y = random(20,height-20);
    float speed = 3;
    float dir = random(0,TWO_PI);
    float wid = 10;
    
    balls[i] = new Ball(x,y,speed,dir,wid);
  }
}

void draw(){
  background(0);
  for (Ball b : balls){
    b.move();
    b.bounce(walls);
    b.show();
  }
  
  for (Wall w : walls){
    w.show();
  }
}

void mousePressed(){
  startX = mouseX;
  startY = mouseY;
}

void mouseDragged(){
  noFill();
  rect(startX, startY, mouseX - startX, mouseY - startY);
}

void mouseReleased(){
  walls.add(new Wall(startX, startY, mouseX - startX, mouseY - startY));
}

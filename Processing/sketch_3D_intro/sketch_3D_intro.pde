Ball[] balls;
float boxWidth, boxHeight, boxDepth;

void setup(){
  fullScreen(P3D);
  boxWidth = width;
  boxHeight = height;
  boxDepth = 1000;
  balls = new Ball[50];
  for (int i = 0; i < balls.length; i++){
    float w = random(10,50);
    float x = random(-boxWidth/2 + w/2,boxWidth/2 - w/2);
    float y = random(-boxHeight/2 + w/2,boxHeight/2 - w/2);
    float z = random(-boxDepth/2 + w/2,boxDepth/2 - w/2);
    balls[i] = new Ball(x,y,z,random(-1,1),random(-1,1),random(-1,1),random(0,10),w);
  }
}

float xRot = 0;
float yRot = 0;
float zRot = 0;
float zoom =0;
boolean xUp, xDown, yUp, yDown, zUp, zDown;

void rot(){
  if (xUp) xRot += PI/30;
  if (xDown) xRot -= PI/30;
  if (yUp) yRot += PI/30;
  if (yDown) yRot -= PI/30;
  if (zUp) zRot += PI/30;
  if (zDown) zRot -= PI/30;
}

void keyPressed(){
  if(keyCode == RIGHT) yUp = true;
  if(keyCode == LEFT) yDown = true;
  if(keyCode == UP) xUp = true;
  if(keyCode == DOWN) xDown = true;
  if(keyCode == 'p') zUp = true;
  if(keyCode == 'o') zDown = true;
}

void keyReleased(){
  if(keyCode == RIGHT) yUp = false;
  if(keyCode == LEFT) yDown = false;
  if(keyCode == UP) xUp = false;
  if(keyCode == DOWN) xDown = false;
  if(keyCode == 'p') zUp = false;
  if(keyCode == 'o') zDown = false;
}

void mouseWheel (MouseEvent event){
  zoom-= event.getCount() * 10;
}

void draw(){
  background(0);
  push();
  translate(width/2,height/2,-boxDepth/2 - zoom);
  rotateX(-xRot);
  rotateY(-yRot);
  rotateZ(-zRot);
  
  stroke(255);
  noFill();
  box(boxWidth,boxHeight,boxDepth);
  for(Ball b : balls){
    b.move();
    b.bounce();
    b.show();
  }
  
  pop();
  rot();
}

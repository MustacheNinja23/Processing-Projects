//bouncing ball with pvectors
float wid, speed, dir;
ArrayList<Ball> balls;

void setup(){
  fullScreen();
}

void draw(){
  background(0);
  for (int i = 0; i < balls.size(); i++){
    balls.get(i).bounce();
    balls.get(i).move();
    balls.get(i).show();
  }
}

void mousePressed(){
  dir = random(0,TWO_PI);
  speed = random(3,30);
  wid = random(3,30);
  balls.add(new Ball(speed,dir,wid));
}


/* // draw line to mouse with pvectors
PVector mouse, center;

void setup(){
  fullScreen();
}

void draw(){
  background(255);
  
  PVector mouse = new PVector(mouseX,mouseY);
  PVector center = new PVector(width/2,height/2);
  
  mouse.sub(center);
  
  mouse.mult(1);
  
  translate(width/2,height/2);
  line(0,0,mouse.x,mouse.y);
}
*/

/*
Ball ball;

void setup(){
 fullScreen(); 
 ball = new Ball(width/2,height/2, 5, PI/4, 30);  //position, speed, direction, direction, width
}

void draw(){
  background(0);
  ball.bounce();
  ball.gravity();
  ball.move();
  ball.show();
}
*/

Ball[] balls;

void setup(){
  fullScreen();
  balls = new Ball[10];
  
  for (int i = 0; i < balls.length; i++){
    float x = random(0,width);  //generates a random x position for a ball
    float y = random(0,height);  //generates a random y position for a ball
    float speed = random(5,20);  //generates a random speed for a ball
    float dir = random(0,TWO_PI);  //generates a random direction the ball will begin in
    int w = (int)random(10,50);  //generates a random width for a ball
    balls[i] = new Ball(x,y,speed,dir,w);  //creates a ball with above specs
  }
}

void draw(){
  background(0);
  for (int i = 0; i < balls.length; i++){
    balls[i].gravity();
    balls[i].bounce();
    balls[i].move();
    balls[i].show();
  }
}

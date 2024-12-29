float x,y;  //instantiate balls x and y coordinates
float xVel,yVel;  //instantiate ball's x and y velocity
float dir;
PImage img;
float ballWidth;  //instantiate ball width

void setup(){
  fullScreen(); //sets screen size to fullscreen
  x = width/2;  //sets x position to halfway across the screen
  y = height/2;  //sets y position to halfway up the screen
  xVel = 15;  //sets initail horizontal velocity in pixels per frame
  yVel = 10;  //sets initial vertical velocity in pixels per frame
  ballWidth = 20;
  dir = random(0,TWO_PI);
  img = loadImage("DVD.png");
}

void draw(){
  background(255);  //sets background color to black
  
  move();  //calls the move method each frame
  bounce();  //calls the bounce method each frame
  //gravity();
  
  //fill(255);  //sets ball fill color to white
  image(img,x,y,180,100);  //draws and ellipse at position x,y with width and height 20
}

void move(){
  x += xVel*cos(dir+(PI/5));
  y += yVel*sin(dir+(PI/5));
}

void bounce(){
  if (x <= 0 || x >= width-180) xVel = -xVel;  //checks if ball hits a horizontal wall, reverses horizontal velocity if so
  //measures from the center, so using ballWidth/2 creates a radius that is equal to the ball's
  if (y <= 0 || y >= height-90) yVel = -yVel;  //checks if ball hits a vertical wall, reverses vertical velocity if so
}

void gravity(){
  yVel += 0.5;  //adds a downward acceleration to the y velocity
}

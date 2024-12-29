//number of rows and columns for vector fields
int rows, cols;

//number of pixels per cell
int scale = 10;

//time variable
float zOff = 0;

//how much the noise values are allowed to change on the grid
float inc = 0.05;
//how fast we move through time
float timeInc = 0.05;

void setup(){
  size(600,600); 
  cols = width/scale;
  rows = height/scale;
}

void draw(){
  background(255); 
  fill(0);
  float xOff = 0;
  for(int x =0; x < cols; x++){
    float yOff = 0;
    for(int y = 0; y < rows; y++){
      float a = noise(xOff,yOff,zOff) * TWO_PI;
      PVector v = PVector.fromAngle(a);
      
      push();
      translate(x*scale,y*scale);  //moves the grid
      rotate(v.heading());  //rotates the grid //returns direction of the vector
      line(0,0,scale,0);  //creates a line between the two coordinates
      pop();
      
      yOff += inc;
    }
    xOff += inc;
  }
  zOff += timeInc;
}

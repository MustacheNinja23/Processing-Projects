float t;

void setup(){
  size(600,600);
  t = 0;
}

void draw(){
  background(0);
  
  stroke(255);
  strokeWeight(5);  //sets the line thickness to 5 pixels
  
  noFill();
  beginShape();  //starts a shape that can have verticies added
  //for loop going across every pixel of the screen
    //use the x value as our horizontal position
  for (int x = 0; x < width; x++){
    //set height value to the noise that occurs at the x position
    float y = noise(x/100.0) * 200 + height/2;
    //draw a point at the corresponding position
    vertex(x,y);
  }
  //ends the shape
  endShape();
  
  //increment t over time
  t += 0.05;
}

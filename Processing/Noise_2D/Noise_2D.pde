int w = 1;  //pixelWidth
float t = 0;

void setup(){
  size(600,600); 
}

void draw(){
  background(0);
  
  noStroke();
  
  for (int x = 0; x < width; x += w){  //loop horizontally across the frame
    for (int y = 0; y < height; y += w){  //loop vertically down the frame
      
      //set the color to a grayscale value corresponding to the noise value at each rectangle's x y position
      fill(noise(x/100.0,y/100.0)*255);
      
      //draw a rectangle at that position with width and height equal to the pixel width
      rect(x,y,w,w);
    }
  }
  t += 5;
}

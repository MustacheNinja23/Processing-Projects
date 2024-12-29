public int spacing = 20, grid, squares, size = 1;
public float xpos, ypos, xspeed, yspeed;
public int fr = 2;
Snake bob;
void setup(){
  size(620,620);
  frameRate(fr);
  
  bob = new Snake();
}

void draw(){
  background(0);
  
  stroke(50);
  grid = 0;
  while(grid <= width){
    line(grid, 0, grid, height);
    line(0, grid, width, grid);
    grid += spacing;
  }
  
  switch(keyCode){
    case 37: //left
      if(size > 1 && xspeed == 0){
      xspeed = -spacing;
      yspeed = 0;
      }
      else if(size == 1){
        xspeed = -spacing;
      yspeed = 0;
      }
      break;
    case 38: //up
      if(size > 1 && yspeed == 0){
        xspeed = 0;
        yspeed = -spacing;
      }
      else if(size == 1){
        xspeed = 0;
        yspeed = -spacing;
      }
      break;
    case 39: //right
      if(size > 1 && xspeed == 0){
        xspeed = spacing;
        yspeed = 0;
      }
      else if(size == 1){
        xspeed = spacing;
        yspeed = 0;
      }
      break;
    case 40: //down
      if(size > 1 && yspeed == 0){
        xspeed = 0;
        yspeed = spacing;
      }
      else if(size == 1){
        xspeed = 0;
        yspeed = spacing;
      }
      break;
  }
  
  bob.show();
  bob.update();
  System.out.println(xspeed);
  System.out.println(yspeed);
}

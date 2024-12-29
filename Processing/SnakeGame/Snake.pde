class Snake{
  
  Snake(){
    //depends on size & spacing
    xpos = 300;
    ypos = spacing;
    xspeed = spacing;
    yspeed = 0;
  }
  
  void update(){
    xpos += xspeed;
    ypos += yspeed;
  }
  
  void show(){
    fill(0,255,0);
    rect(xpos, ypos, spacing, spacing);
  }    
}

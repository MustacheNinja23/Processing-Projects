class Ball{
  PVector loc,vel;
  float wid;
  
  public Ball(float speed, float d, float w){
    loc = new PVector(mouseX,mouseY);
    vel = new PVector(speed + cos(d), speed + sin(d));
    wid = w;
  }
  
  void show(){
    fill(255);
    ellipse(loc.x,loc.y,wid,wid);
  }
  
  void move(){
    loc.x += vel.x;
    loc.y += vel.y;
  }
  
  void bounce(){
    if(loc.x >= width - wid/2 || loc.x <= 0){
    vel.x *= -1;
    }
    if(loc.y >= height - wid/2 || loc.y <= 0){
    vel.y *= -1;
    }
  }
}

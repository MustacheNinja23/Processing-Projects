class Ball{
  PVector pos, vel;
  float w;
  public Ball(float x, float y, float z, float xVel, float yVel, float zVel, float speed, float wid){
    pos = new PVector(x,y,z);
    vel = new PVector(xVel,yVel,zVel);
    vel.setMag(speed);
    w = wid;
  }
  
  void show(){
    push();
    noStroke();
    fill(255);
    translate(pos.x,pos.y,pos.z);
    sphere(w);
    pop();
  }
  
  void move(){
    pos.add(vel);
  }
  
  void bounce(){
    if(pos.x + w/2 > boxWidth/2 || pos.x - w/2 < -boxWidth/2) vel.x *= -1;
    if(pos.y + w/2 > boxHeight/2 || pos.y - w/2 < -boxHeight/2) vel.y *= -1;
    if(pos.z + w/2 > boxDepth/2 || pos.z - w/2 < -boxDepth/2) vel.z *= -1;
  }
}

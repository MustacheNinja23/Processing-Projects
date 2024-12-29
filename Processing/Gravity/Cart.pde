class Cart{
  PVector pos, vel, acc;
  float mass, angle;
  public Cart(float x, float y, float m, float a){
    mass = m;
    angle = a;
    pos = new PVector(x,y);
    acc = new PVector(0,0);
  }
  
  void show(){
    //noStroke();
    fill(150,255,50); //color
    rotate(angle);
    rect(pos.x,pos.y,150,50);
  }
  
  void move(){
    vel.add(acc);
    pos.add(vel);
    acc.set(0,0);
  }
  
  void setAngle(float a){
    angle = a;
  }
  
  void gravity(){
    acc.add(0,1.0);
  }
}

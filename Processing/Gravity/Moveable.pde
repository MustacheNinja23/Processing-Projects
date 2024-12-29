class Movable{
  PVector pos, vel, acc;
  float mass, angle;
  public Movable(float x, float y, float m, float a){
    mass = m; //in kilograms
    angle = a;
    pos = new PVector(x,y);
    acc = new PVector(0,0);
  }
  void move(){
    vel.add(acc);
    pos.add(vel);
    
  }
}

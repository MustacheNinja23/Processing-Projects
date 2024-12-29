class Block{
  float x,v,m,w,r,g,b;
  public Block(float xPos, float velocity, float mass, float red, float green, float blue){
    x = xPos;
    v = velocity;
    m = mass;
    r = red;
    g = green;
    b = blue;
    w = sqrt(mass)*10;  //width
  }
  
  void show(){
    fill(color(r,g,b));
    stroke(255);
    rect(x,height-20,w,-w);
  }
  
  void move(){
    x += v;
  }
  
  //Elastic Collision
  boolean collision(Block o){
    if (x + w >= o.x && o.x + o.w >= x){
      float vf1 = (2*m)/(m+o.m)*v+(o.m-m)/(m+o.m)*o.v;
      float vf2 = (m-o.m)/(m+o.m)*v+(2*o.m)/(m+o.m)*o.v;
      
      v = vf2;
      o.v = vf1;
      return true;
    }
    return false;
  }

  //Inelastic Collision
  boolean collision(Block o){
    if (x + w >= o.x && o.x + o.w >= x){
      v = (m*v + o.m*o.v)/(m + o.m);
      o.v = v;
      return true;
    }
    return false;
  }
}

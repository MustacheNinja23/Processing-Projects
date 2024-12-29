Cart cart; Ramp ramp;
void setup(){
  fullScreen();
  background(255);
  cart = new Cart(100,100, 1, 0);
  ramp = new Ramp(200);
  System.out.println(ramp.getAngle());
}

void draw(){
   background(255);
   cart.gravity();
   cart.move();
   cart.show();
   ramp.show();
}

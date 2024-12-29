class Ramp{
  int h;
  public Ramp(int h){
    this.h = h;
  }
  
  void show(){
    //noStroke();
    fill(0,0,255);
    triangle(0,height,0,height-h,width,height);
  }
  
  float getAngle(){
    return atan((float)h/width);
  }
}

/*
Description:
Spews shapes from common origin
Think volcano
*/
class ParticleGenerator{
  float x, y;  // Where particles spew out of 
  ParticleGenerator(float x, float y){
    this.x = x;
    this.y = y;
  }
  void update(){
    ellipse(x, y, 20, 20);
    y = y - 1;
  }
}

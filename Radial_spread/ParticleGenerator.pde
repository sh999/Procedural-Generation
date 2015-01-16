/*
Description:
Spews shapes from common origin
Think volcano
*/
class ParticleGenerator{
  float x, y;  // Where particles spew out of 
  Particle[] particles;
  int amt;
  ParticleGenerator(float x, float y, int amt){
    this.x = x;
    this.y = y;
    this.amt = amt;
    this.particles = new Particle[amt];
    for(int i = 0; i < amt; i++){
      particles[i] = new Particle();
    }
  }
  void update(){
    for(int i = 0; i < amt; i++){
      particles[i].update();
    }
  }
}

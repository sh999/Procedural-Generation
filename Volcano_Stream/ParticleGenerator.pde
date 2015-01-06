/*
Description:
Spews shapes from common origin
Think volcano
*/
class ParticleGenerator{
  float x, y;  // Where particles spew out of 
  Particle[] particles;
  ParticleGenerator(float x, float y){
    this.x = x;
    this.y = y;
    this.particles = new Particle[3];
    for(int i = 0; i < 3; i++){
      particles[i] = new Particle(i);
    }
  }
  void update(){
    for(int i = 0; i < 3; i++){
      particles[i].update();
    }
  }
}

/*
Description:
Spews shapes from common origin
Think volcano
*/
class ParticleGenerator{
  float x, y;  // Where particles spew out of 
  Particle[] particles;
  ScreenPixels pix;
  int amt;
  ParticleGenerator(float x, float y, int amt, ScreenPixels sp){
    this.x = x;
    this.y = y;
    this.amt = amt;
    this.particles = new Particle[amt];
    this.pix = sp;
    for(int i = 0; i < amt; i++){
      particles[i] = new Particle(pix);
    }
  }

  void update(){
    for(int i = 0; i < amt; i++){
      particles[i].update();

    }
  }
}

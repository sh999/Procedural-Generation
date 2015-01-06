class Particle{
  int x;
  Particle(int x){
    this.x = x;
  }
  void update(){
    ellipse(x*40, 30, 20, 20);
  }
}

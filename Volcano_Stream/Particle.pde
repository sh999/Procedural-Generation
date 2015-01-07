class Particle{
  int x;
  float health;
  PFont myFont;
  int id;
  color particleColor;
  int delay;
  Particle(int id){
    this.x = id * 40;
    this.id = id;
    health = 100 + (20 - id*3);
    delay = id * 30;
    myFont = loadFont("GillSans-15.vlw");
    textFont(myFont, 15);
    
  }
  void update(){
//    fill(health/120*250);
    ellipse(x, 30, 20, 20);
    
    text(health, x, id*40+70);
    health = health - 1;
    
  }
}

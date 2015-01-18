class Particle{
  float x, y;
  int rad;
  float dy, accel;
  float health;
  PFont myFont;
  color particleColor;
  Particle(){
    this.x = random(0,width);
    this.y = height;
    this.dy = 0;
    this.rad = 20;
    this.accel = random(0, 0.1);
    health = random(100, 150);
    myFont = loadFont("GillSans-15.vlw");
    textFont(myFont, 15);
  }
  void update(){
    
    fade();
    if(health < 100){
      if(dy == 0) dy = 1;
      dy = dy + accel;
    }
    y = y - dy;
    ellipse(x, y, rad, rad);
    point(x, y);
  }
  
  void fade(){
    health = health - 0.05;
  }
  
}

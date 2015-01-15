class Particle{
  float x, y;
  float dy;
  float health;
  PFont myFont;
  color particleColor;
  Particle(){
    this.x = random(0,width);
    this.y = height;
    this.dy = 0;
    health = random(100, 150);
    myFont = loadFont("GillSans-15.vlw");
    textFont(myFont, 15);
  }
  void update(){
    fade();
    if(health < 100){
      if(dy == 0) dy = 1;
      dy = dy + 0.05;
    }
    y = y - dy;
    ellipse(x, y, 20, 20);
  }
  
  void fade(){
    health = health - 0.05;
  }
  
}

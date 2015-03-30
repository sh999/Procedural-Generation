class Particle{
  float x, y, dx, dy;
  float dir, speed;
  int radius;
  ScreenPixels pix;
  float health;
  PFont myFont;
  color particleColor;
  Particle(ScreenPixels sp){
    this.x = width/2;
    this.y = height/2;
    this.radius = 5;
    this.pix = sp;
    dir = radians(-90);
    speed = 0.35;
    health = random(100, 150);
    myFont = loadFont("GillSans-15.vlw");
    textFont(myFont, 15);
  }
  void update(){
    fade();
    changeDirection();
    move();
    drawParticle();
    dropDots();

  }
  
  void drawParticle(){
    ellipse(x, y, radius, radius);
  }

  void dropDots(){
     
  }

  void move(){
    dir = dir + random(-0.1,0.1);
    dx = cos(dir) * speed;
    dy = sin(dir) * speed;
    x = x + dx;
    y = y + dy;
  }
  
  void fade(){
    health = health - 0.05;
  }
  
  void changeDirection(){
    
  }
  
  
  
}

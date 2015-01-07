ParticleGenerator a;
color bgColor;
PFont myFont;
int clock;
void setup(){
  size(300, 300);
  noStroke();
  smooth();
  bgColor = color(0, 60, 80);
  background(bgColor);
  a = new ParticleGenerator(width/2, height/2);
  myFont = loadFont("GillSans-15.vlw");
  textFont(myFont, 15);
}

void draw(){
  background(bgColor);
  a.update();
  text(clock, 40, 200);
  clock = clock + 1;
}


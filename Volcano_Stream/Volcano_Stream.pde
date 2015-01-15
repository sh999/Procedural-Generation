ParticleGenerator a;
color bgColor;
PFont myFont;
float clock;
void setup(){
  size(300, 300);
  noStroke();
  smooth();
  bgColor = color(0, 60, 80);
  background(bgColor);
  a = new ParticleGenerator(width/2, height/2, 20);
  myFont = loadFont("GillSans-15.vlw");
  textFont(myFont, 15);
}

void draw(){
  background(bgColor);
  a.update();
//  text("time = "+clock, 40, 40);
  clock = clock + 1;
}


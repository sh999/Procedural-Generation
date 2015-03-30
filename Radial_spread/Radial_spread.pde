ParticleGenerator particleGenerator;
color bgColor;
PFont myFont;
float clock;
ScreenPixels screenPixels;
void setup(){
  size(200, 200);
  noStroke();
  smooth();
  bgColor = color(0, 60, 80);
  background(bgColor);
  screenPixels = new ScreenPixels(width, height);
  particleGenerator = new ParticleGenerator(width/2, height/2, 100, screenPixels);
  myFont = loadFont("GillSans-15.vlw");
  textFont(myFont, 15);
}

void draw(){
  background(bgColor);
  particleGenerator.update();
  clock = clock + 1;
}


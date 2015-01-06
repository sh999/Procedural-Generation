ParticleGenerator a;
color bgColor;
void setup(){
  size(300, 300);
  noStroke();
  smooth();
  bgColor = color(0, 60, 80);
  background(bgColor);
  a = new ParticleGenerator(width/2, height/2);
  
}

void draw(){
  background(bgColor);
  a.update();
}


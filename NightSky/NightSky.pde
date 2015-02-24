StarField starField;
Galaxy galaxy;

void setup(){
  size(1600, 800);
  background(0);
  rectMode(CENTER);
  noStroke();
  
  int stars = 1000;
  float angle = random(-0.5, 0.5);
  starField = new StarField(stars);
  galaxy = new Galaxy(angle);
}

void draw(){
  starField.drawStarField();
  galaxy.update();
  /*
  Draw field of stars
  Draw dark cloud
  Overlay atmospheric color
  Draw ground
  Post processing (if needed)  
  */
}

void mousePressed(){
  setup();
}



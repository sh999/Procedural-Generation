StarField starField;
Galaxy galaxy;

void setup(){
  size(1600, 800);
  background(0);
  rectMode(CENTER);
  noStroke();
  starField = new StarField(1000);
  galaxy = new Galaxy();
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



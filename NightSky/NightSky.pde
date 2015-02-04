StarField starField;

void setup(){
  size(1600, 800);
  background(0);
  starField = new StarField(100);
}

void draw(){
  starField.drawStarField();
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



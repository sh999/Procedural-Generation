int hillAmt;
void setup(){
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 500);
  
  drawSky();
  hillAmt = 3;
  drawGround();
  drawTrees();
  
}

void draw(){
}

void mouseClicked(){
  setup();
}


void drawSky(){
//  background(150, 190, 220);
  for(int i = 0; i < height; i++){
    stroke(217, map(i, 0, height, 100, 0), 100);
//    stroke(217, 100, 500);
    line(0, i, width, i);
  }
}

void drawGround(){

  noStroke();
  fill(120, 70, 90);
  for(int i = 0; i <= hillAmt; i++){
    ellipse(random(0,width), height*1.3, 750, 500);
  }
}

void drawTrees(){
}



/*
Gradient
Tasks:
Get R, G, B to make gradient based on blue
Draw random parallelograms
*/

void setup(){
  size(255,255);
  loadPixels();
  initGradient(color(0,0,255));
}
void initGradient(color c){
  color base = c;
  for(int i = 0; i < pixels.length; i++){
    int col = i % width;
    int row = i / height;
    pixels[i] = i/255*base;
  }
  updatePixels();
}



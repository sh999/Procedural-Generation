void setup() {
  size(1000, 1000);
  colorMode(HSB, 360, 100, 100);
  background(0);
  rectMode(CENTER);
  plot_set();
}

void plot_set() {
  float x; // real component
  float y; // imaginary component
  float x_temp;
  float c_x;
  float c_y;
  int iterations;
  int max_iterations;
  int resolution = 1; // 1 is highest resolution
  for(int ax = 0; ax <= width; ax = ax + resolution){
    for(int ay = 0; ay <= height; ay = ay + resolution){
      x = 0;  
      y = 0;  
      iterations = 0;
      max_iterations = 100;
      c_x = map(ax, 0, width, -2.2, 0.75);  // maps canvas size to small 2d coordinate  //<>//
      c_y = map(ay, 0, height, -1.5, 1.5);  // mandelbrot set is visible only in this area
      while (dist(x, y, 0, 0) < 2 && iterations <= max_iterations) {
        /*println("\niterations = " + iterations);
        println("c_x = " + c_x);
        println("c_y = " + c_y);
        println("x = " + x);
        println("y = " + y);
        println("dist to origin = " + dist(x, y, 0, 0));*/
        x_temp = sq(x) - sq(y) + c_x;
        y = 2 * x * y + c_y;
        x = x_temp;
        iterations += 1;
      }
      color pixel_color;
      if (iterations >= max_iterations){
        pixel_color = color(0, 0, 0);  // ensures blackness in numbers of the set
      }
      else{
        pixel_color = color(map(iterations, 0, max_iterations, 0, 360), 100, 100); // # iterations control hue in HSB mode
      }
      fill(pixel_color);
      stroke(pixel_color);
      rect(ax, ay, resolution, resolution);
    }
  }
}
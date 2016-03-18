/*
*/

void setup() {
  size(800, 800);
  colorMode(HSB, 100);
  background(0);
  noStroke();
  rectMode(CENTER);
  plot_set();
  
}

void plot_set() {
  float x;
  float y;
  float x_temp;
  float c_x;
  float c_y;
  int iterations;
  int max_iterations;
  int resolution = 100;
  resolution = width / resolution;
  //int resolution = 5; // 1 is highest resolution; keep low during development in case memory usage is too high
  for(int ax = 0; ax <= width; ax = ax + resolution){
    for(int ay = 0; ay <= height; ay = ay + resolution){
      x = 0;
      y = 0;
      //c_x = 0;
      //c_y = 2;
      iterations = 0;
      max_iterations = 10;
      // below, change c_x to (....., -2, 1 later)
      //  easier to work with square plot for now
      c_x = map(ax, 0, width, -2.2, 0.75);  // maps canvas size to small 2d coordinate  //<>//
      c_y = map(ay, 0, height, -1.5, 1.5); // mandelbrot set is visible only in this area
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
      //stroke(map(iterations, 0, max_iterations, 0, 255));
      color pixel_color;
      if (iterations >= max_iterations){
        pixel_color = color(0, 0, 0);
      }
      else{
        pixel_color = color(map(iterations, 0, max_iterations, 0, 100), 100, 100); // HSB mode
      }
      fill(pixel_color);
      rect(ax, ay, resolution, resolution);
    }
  }
}
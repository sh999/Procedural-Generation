/*
*/

void setup() {
  size(200, 200);
  plotSet();
}

void plotSet() {
  float x;
  float y;
  float x_temp;
  float c_x;
  float c_y;
  int iterations;
  int max_iterations;
  x = 0;
  y = 0;
  c_x = 0;
  c_y = 2;
  iterations = 0;
  max_iterations = 10;
  // below, change c_x to (....., -2, 1 later)
  //  easier to work with square plot for now
  // c_x = map(c_x, 0, width, -1, 1);  // maps canvas size to small 2d coordinate 
  // c_y = map(c_y, 0, height, -1, 1); // mandelbrot set is visible only in this area
  while (dist(x, y, 0, 0) < 1000 && iterations < max_iterations) {
    println("\niterations = " + iterations);
    println("x = " + x);
    println("y = " + y);
    println("dist to origin = " + dist(x, y, 0, 0));
    x_temp = sq(x) - sq(y) + c_x;
    y = 2 * x * y + c_y;
    x = x_temp;
    iterations += 1;
  }
}
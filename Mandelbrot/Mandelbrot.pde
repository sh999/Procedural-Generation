float plot_width = 2.5;
float plot_height = 2.5;
float plot_x_center = -0.75;
float plot_y_center = 0;
int max_iterations = 100;
int zoom = 0;  // number of times you've zoomed

void setup() {
  size(1000, 1000);
  colorMode(HSB, 360, 100, 100);
  background(0);
  rectMode(CENTER);  
  plot_set(plot_width, plot_height, plot_x_center, plot_y_center);
}

void draw(){
  
}

void keyReleased(){
  if(keyCode == UP){
    max_iterations = int(max_iterations * 1.1);
  }
  if(keyCode == DOWN){
    max_iterations = int(max_iterations * .9);
  }
  if(keyCode == RIGHT){
    max_iterations = int(max_iterations * 2);
  }
  if(keyCode == LEFT){
    max_iterations = int(max_iterations * 0.5);
  }
  plot_set(plot_width, plot_height, plot_x_center, plot_y_center);
  println("max iterations = " + max_iterations);
}

void mouseReleased(){
  // zooming happens after every click
  // currently point and zoom, not using rectangular zoom
  
  // below calculations are for adjusting the x and y axis of
  // the plot. Ultimately, plot_set() is called with the new
  // x-axis and y-axis values and the origin is where the user clicked
  
  float x_axis_min = plot_x_center - plot_width/2;
  float x_axis_max = plot_x_center + plot_width/2;
  float y_axis_min = plot_y_center - plot_height/2;
  float y_axis_max = plot_y_center + plot_height/2;

  plot_x_center = map(mouseX, 0, width, x_axis_min, x_axis_max);
  plot_y_center = map(mouseY, 0, height, y_axis_min, y_axis_max);
  
  plot_width = plot_width * 0.5;
  plot_height = plot_height * 0.5;
  
  plot_set(plot_width, plot_height, plot_x_center, plot_y_center);
  println("max iterations = " + max_iterations);
  zoom += 1;
  println("zooms = " + zoom);

}

void plot_set(float plot_width, float plot_height, float plot_x_center, float plot_y_center) {
  float x; // real component
  float y; // imaginary component
  float x_temp;
  float c_x;  // pixel coordinates, or the c component in a = b^2 + c
  float c_y;
  int iterations;
  int resolution = 1; // 1 is highest pixel resolution
  
  float x_axis_min = plot_x_center - plot_width/2;
  float x_axis_max = plot_x_center + plot_width/2;
  float y_axis_min = plot_y_center - plot_height/2;
  float y_axis_max = plot_y_center + plot_height/2;

  for(int ax = 0; ax <= width; ax = ax + resolution){
    for(int ay = 0; ay <= height; ay = ay + resolution){
      x = 0;  // iteration starts with (0, 0) value in the first calculation
      y = 0;  
      iterations = 0;
      c_x = map(ax, 0, width, x_axis_min, x_axis_max);  // maps canvas size to small 2d coordinate  //<>//
      c_y = map(ay, 0, height, y_axis_min, y_axis_max);  // mandelbrot set is visible only in this area
      while (dist(x, y, 0, 0) < 2 && iterations <= max_iterations) {
        x_temp = sq(x) - sq(y) + c_x;
        y = 2 * x * y + c_y;
        x = x_temp;
        iterations += 1;
      }
      color pixel_color;
      if (iterations >= max_iterations){
        pixel_color = color(0, 0, 0);  // ensures blackness for an equation that results in convergence or lack of divergence
      }
      else{
        pixel_color = color(map(iterations, 0, max_iterations, 0, 360), 100, 100); // # iterations control hue in HSB mode
      }
      fill(pixel_color);
      stroke(pixel_color);
      rect(ax, ay, resolution, resolution);
    }
  }
} // end plot_set()
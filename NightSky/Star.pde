class Star{
  float radius;
  int maxRadius;
  int minRadius;
  float x, y;
  Star(){
    minRadius = 1;
    maxRadius = 20;
    radius = random(minRadius, maxRadius);
    x = random(0,width);
    y = random(0,height);
  }
  void drawStar(){
//    ellipse(x, y, radius, radius);
    noStroke();
    for(int dist = 0; dist <= radius; dist++){
      stroke(dist);
      ellipse(x, y, dist, dist);
    }
  }
}

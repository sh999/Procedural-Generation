class Star{
  float radius;
  float x, y;
  Star(){
    radius = random(0,100);
    x = random(0,width);
    y = random(0,height);
  }
  void drawStar(){
//    ellipse(x, y, radius, radius);
    for(int dist = 0; dist <= radius; dist++){
      stroke(dist);
      ellipse(x, y, dist, dist);
    }
  }
}

class Star{
  float radius;
  int maxRadius;
  int minRadius;
  float x, y;
  color starColor;
  int starAlpha;
  Star(){
    minRadius = 1;
    maxRadius = 5;
    radius = random(minRadius, maxRadius);
    // radius = 90; Activate line if doing gradient star
    x = random(0,width);
    y = random(0,height);
    starColor = getStarColor();
    starAlpha = 250;
  }
  
  void drawStar(){
    fill(255);
    ellipse(x, y, radius, radius);
  }

  void drawStar2(){
    int whiteRadius = 20;
    ellipse(x, y, whiteRadius, whiteRadius);
    drawColorHalo();
  }
  void drawColorHalo(){
//    ellipse(x, y, radius, radius);
//    noStroke();
//    fill(starColor);
    noFill();
    
    for(int dist = 0; dist <= radius; dist = dist + 2){
//      stroke(255, 0, 0, dist);
      stroke(255, 0, 0, starAlpha);  
      ellipse(x, y, dist, dist);
      starAlpha -= 5;
    }
  }
  color getStarColor(){
    int colorChoice = int(random(1, 10));
    if(colorChoice >= 5){
      return color(255, 0, 0);
    }
    else{
      return color(0, 0, 255);
    }
  }
}

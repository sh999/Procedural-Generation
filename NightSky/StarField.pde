class StarField{
  Star[] stars;
  int starAmt;
  StarField(int starAmt){
    this.starAmt = starAmt;
    stars = new Star[starAmt];
    for(int i = 0; i < starAmt; i++){
      stars[i] = new Star();
    }
  }
  void drawStarField(){
//    stars[0].drawStar();
    for(int i = 0; i < starAmt; i++){
      stars[i].drawStar();
    }
  }
}

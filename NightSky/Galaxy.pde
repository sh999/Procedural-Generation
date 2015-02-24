class Galaxy{
  /*
  Create galaxy nucleus
    Properties:
      Center
      Diameter
      Brightness
      Shape (circle vs ellipse)
  Create galaxy arm (white)
    Properties:
      Length, width
      Brightness
      Shape irregularity
      Color
  Create galaxy arm (black)
    Properties:
      Length, width
      Wispiness  
  */
  GalaxyNucleus galaxyNucleus;
  GalaxyWhiteArm galaxyWhiteArm;
  GalaxyBlackArm galaxyBlackArm;
  float angle;
  Galaxy(float angle){
    galaxyNucleus = new GalaxyNucleus(0, 0, 100);
    galaxyWhiteArm = new GalaxyWhiteArm();
    galaxyBlackArm = new GalaxyBlackArm();
    this.angle = angle;
  }

  void update(){
    translate(width/2, height/2);
    rotate(angle);

    galaxyNucleus.update();
    galaxyWhiteArm.update();
    galaxyBlackArm.update();
  }
}

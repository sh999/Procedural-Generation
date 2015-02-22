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
  GalaxyBlackArm galaxyBlackAr;
  Galaxy(){
    galaxyNucleus = new GalaxyNucleus(width/2, height/2, 100);
    galaxyWhiteArm = new GalaxyWhiteArm();
    galaxyBlackAr = new GalaxyBlackArm();
  }

  void update(){
    galaxyNucleus.update();
    galaxyWhiteArm.update();
    galaxyBlackAr.update();
  }
}

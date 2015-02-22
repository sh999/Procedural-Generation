class GalaxyNucleus{
	int x, y;
	int diameter;
	int intensity;
	GalaxyNucleus(int x, int y, int diameter){
		this.x = x;
		this.y = y;
		this.diameter = diameter;
	}

	void update(){
		drawNucleus();
	}

	void drawNucleus(){
		fill(255);
		ellipse(x, y, diameter*3, diameter);
	}
}

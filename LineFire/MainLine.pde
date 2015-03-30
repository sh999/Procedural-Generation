class MainLine{
	float startX, r, g, b;
	MainLine(int startX){
		this.startX = startX;
		r = 255;
		g = 255;
		b = 0;
	}

	void draw(){
		color col;
		col = color(r, g, b);
		translate(startX, 0);
		line(0, height, width/2, 0);
		for(int i = 0; i <= height; i++){
			col = color(r, g, b);
			g = g - 1;
			if(random(100) > 80){
				drawSideMarks(i, col);
			}
		}
	}

	void drawSideMarks(int i, color c){
		for(int j = 0; j <= random(100); j++){
			fill(c);
			ellipse(j*5, i, 3, 3);
		}
	}
}
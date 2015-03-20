class MainLine{
	void MainLine(int startX){
		this.startX = startX;
	}
	void draw(){
		color col;
		col = color(r, g, b);
		line(width/2, height, width/2, 0);
		for(int i = 0; i <= height; i++){
			col = color(r, g, b);
			g = g - 1;
			println(g);
			if(random(100) > 80){
				drawSideMarks(i, col);
			}
		}
	}
}
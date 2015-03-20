//todo: put into a class

float r, g, b;
void setup(){
	size(500, 500);
	colorMode(RGB);
	r = 255;
	g = 255;
	b = 0;
	noStroke();
	background(0);
	drawMainLine();
}

void drawMainLine(){
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

void drawSideMarks(int i, color c){
	for(int j = 0; j <= random(100); j++){
		fill(c);
		ellipse(250 + j*5, i, 3, 3);
	}
}

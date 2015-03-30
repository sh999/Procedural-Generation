//todo: put into a class

MainLine[] mainLine;
void setup(){
	background(0);
	size(1000, 500);
	colorMode(RGB);
	noStroke();
	mainLine = new MainLine[10];
	int spacing = width/mainLine.length;
	for(int i = 0; i < mainLine.length; i++){
		println("i*spacing = "+i*spacing);
		mainLine[i] = new MainLine(i*spacing);
	}
	for(int i = 0; i < mainLine.length; i++){
		pushMatrix();
		mainLine[i].draw();
		popMatrix();
	}
}

void draw(){

}

void mousePressed(){
	setup();
}

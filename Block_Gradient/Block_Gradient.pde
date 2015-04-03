/*
	Goal:  Create a gradient of blocks where
	the darkness of a block is dependent on a random
	value.  The chance of being dark depends on location
	of the block

	Todo:  
		Generalize loop, possibly use classes
		Tile in the whole image?
*/
// import java.util.ArrayList;
// ArrayList<Box> boxes = new ArrayList<Box>();
float colorThreshold;
int division;
void setup(){
	size(900, 400);
	// noStroke();
	/*boxes.add(new Box(2)); // How to use ArrayList
	boxes.add(new Box(3));
	for(Box b: boxes){
		b.printVal();
	}*/
	// stroke(0,100,200);
	division = 50;
	int offset = 5;
	background(0);

	float rectSize = width / division;
	for(int row = 0; row < division; row++){
		for(int column = 0; column < division; column++){
			colorThreshold = float(row)/division;
			println(colorThreshold);
			float toCompare = random(0,1);
			// print("to compare = " + toCompare);
			if(toCompare > colorThreshold){
				// noStroke();
				fill(0);
			}
			else{
				stroke(255,0,0);
				fill(0,255,0);
				rect(column*rectSize+offset, row*rectSize+offset, rectSize, rectSize);
				fill(0,177,177);	
			} 
			noStroke();
			rect(column*rectSize, row*rectSize, rectSize, rectSize);

		}
	}
}

void draw(){

}

void mousePressed(){
	setup();
}
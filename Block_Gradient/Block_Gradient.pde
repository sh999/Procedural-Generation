/*
	Goal:  Create a gradient of blocks where
	the darkness of a block is dependent on a random
	value.  The chance of being dark depends on location
	of the block

	Todo:  
		Generalize loop, possibly use classes
		Tile in the whole image?
*/
import java.util.ArrayList;
ArrayList<Box> boxes = new ArrayList<Box>();
float c;
boolean black;
float rand;
void setup(){
	size(300, 300);
	noStroke();
	/*boxes.add(new Box(2)); // How to use ArrayList
	boxes.add(new Box(3));
	for(Box b: boxes){
		b.printVal();
	}*/
	for(int row = 0; row < 10; row++){
		for(int column = 0; column < 10; column++){
			c = float(row)/10;
			if(random(0,1) > c){
				fill(0);
			}
			else fill(255);
			rect(column * 20, row * 20, 20, 20);
		}
	}
}

void draw(){

}

void mousePressed(){
	setup();
}
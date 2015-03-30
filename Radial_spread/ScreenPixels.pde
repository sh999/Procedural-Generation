class ScreenPixels{
  	int[] pix;
  	int w, h;
	ScreenPixels(int w, int h){
		int len = w * h;
		this.w = w;
		this.h = h;
		pix = new int[len];
		for(int i = 0; i < pix.length; i++){	// Set all values to 0 by default
			pix[i] = 0;
		}
	}

	void update(){

	}

	void printValues(){
		for(int i = 0; i < pix.length; i++){
			print(pix[i]);
			if((i + 1) % w == 0){ // print nicely as a table
				println();
			}
		}
	}

	
}
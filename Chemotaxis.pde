Bacteria [] colony = new Bacteria[(int)(Math.random()*100-2)];


 void setup()   
 {     
 	size(600,600);
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria((int)(Math.random()*600), (int)(Math.random()*600));
 	}

 }   





 void draw()   
 {    
 	background(255);
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i].show();
 		colony[i].walk();
 	}

 }  





 class Bacteria    
 {     

 	float myX, myY;
 	float easing = 0.008;
 	int myColor = color((int)(Math.random()*180),(int)(Math.random()*180),220);

 	Bacteria(int x, int y)
 	{
 		myX = x;
 		myY = y;
 	}

 	void show()
 	{
 		noStroke();
 		fill(myColor);
 		ellipse(myX, myY, 20, 20);
 	}

 	void walk()
 	{
 		float targetX = mouseX;
  		float dx = targetX - myX;
  		myX += (dx * easing) + (Math.random()*4-2);

 		float targetY = mouseY;
 		float dy = targetY - myY;
 		myY += (dy * easing) + (Math.random()*4-2);

 	}



 }


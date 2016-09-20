Bacteria [] colony = new Bacteria[1];
Food yummy = new Food();
float foodX, foodY;

 void setup()   
 {     
 	size(600,600);
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
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
 	yummy.show();

 }  





 class Bacteria    
 {     

 	float myX, myY;
 	float easing = 0.01;

 	Bacteria()
 	{
 		myX = 300;
 		myY = 300;
 	}

 	void show()
 	{
 		int myColor = color(25,25,25);
 		fill(myColor);
 		ellipse(myX, myY, 20, 20);
 	}

 	void walk()
 	{
 		float targetX = foodX;
  		float dx = targetX - myX;
  		myX += (dx * easing) + (Math.random()*2-1);

 		float targetY = foodY;
 		float dy = targetY - myY;
 		myY += (dy * easing) + (Math.random()*2-1);

 	}
 }





 class Food
 {
 	Food()
 	{
 		foodX = foodY = (float)(Math.random()*600);
 	}

 	void show()
 	{
 		int foodColor = color(160,160,160);
 		fill(foodColor);
 		rect(foodX, foodY, 10, 10);
 	}
 }
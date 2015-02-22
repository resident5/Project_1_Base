Ball ball; //Objects
BallxHatred hate;
Ball ball1;
Ball ball2;
Deformed deform;

float x = random(0, 255); //random R color
float y = random(0, 255); //random G color
float z = random(0, 255); //random B color

void setup() {
  size(800,800);
  frameRate(60);
  
  ball = new Ball(200, 200);
  hate = new BallxHatred(90, 90);
  ball1 = new Ball(0,0);
  ball2 = new Ball(500, 200);
  deform = new Deformed();
  
}


void draw() {
  background(0);
  
  ball.use();
  ball1.use();
  ball2.use();
  hate.useall();
  deform.active();
 
  
  if (keyPressed) {
    if (key == 's') {
      background(250, 250, 250, 100); //white
      fill(250);
      ball.use();
     // hate.shine();
      ball1.use();
      ball2.use();
     hate.useall();
     
    } else {
      background(103, 140, 23); //green backgroun for another key other than s
      ball.use();
      hate.useall();
      fill(0);
    }
    
    
    
  }
  if (keyPressed) {
    if (key == 'a') { //reset program
      setup();
    }
  }
      
  if (mousePressed) {
    fill(x, y, z);
  }
    
  
}
  
  


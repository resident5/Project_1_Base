//WHat is deformed
class Deformed {
//variables

float x = 0;
float y = 0;
float speedx = random(0, 10); //how fast is hate going on x axis
float speedy = random(0, 10); //how fast is hate going on y axis
  
//Object

//Arguments


  void active() {
    warp();
    picture();
    wall();
    
    
  }
  
  
  void warp() {
    x += speedx;
    y += speedy;
    
    
    
  }
  void picture() {
    background(124, 54, 60, 12);
    stroke(20);
    line(x, y, 0, 0);
    rect(x, y, 100, 100, 120);
    quad(400, 400, x, y, x, y, x, y);
  }

  void wall() {
    if (x > width) { //if the ball hits the right side it will go left
      speedx = speedx * -1;
      fill(124, 0, 10);
    }
  
    if (x < 0) { //if the ball hits the left side it will go right again
      speedx = speedx * -1;
      fill(0, 150, 23);
    }
    if (y > height) { // if the ball hits the ceiling it will go down
      speedy = speedy * -1;
      fill(0, 123, 150);
    }
    if (y < 0) { // if the ball hits the floor it will go up
      speedy = speedy * -1;
      fill(255, 242, 2);
    }
    
  }





}

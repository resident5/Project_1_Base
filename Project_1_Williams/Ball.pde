//what is a Ball
class Ball {
  //Variables
  float x = 0;
  float y = 0;
  float speedx = random(0, 10);
  float speedy = random(5, 10);
  
  //Objects
  Ball(float draw, float make) {
    x = draw;
    y = make;
  }
  
  //Arguments
  void use() { // use all voids
    display();
    move();
    bounce();
    graviga();
  }
  void move() {
    x += speedx; // Go right
    y += speedy; // Go up
  }
  void graviga(){
    speedy += random(0.1 , 0.6);
    }
  void display(){
    ellipse(x, y, 60, 60); 
  }
  
  void bounce() {
    if (x > width) { //if the ball hits the right side it will go left
      speedx = speedx * -1;
    }
  
    if (x < 0) { //if the ball hits the left side it will go right again
      speedx = speedx * -1;
    }
    if (y > height) { // if the ball hits the ceiling it will go down
      speedy = speedy * -1;
    }
    if (y < 0) { // if the ball hits the floor it will go up
      speedy = speedy * -1;
      
    }
    //if (mousePressed) 
    
    
    
  }
  
  
  
    
  


}

//what is a BallxHatred


class BallxHatred {
  //Variables
  color red = color(150, 4, 4);
  float x = 0;
  float y = 0;
  float speedx = random(0, 60); //how fast is hate going on x axis
  float speedy = random(0, 60); //how fast is hate going on y axis
  
  //Objects
  BallxHatred(float life, float death) {
    
    x = life;
    y = death;
  }
  //Arguments
  
  void useall() { // use all voids
    show();
    mobilize();
    jump();
    //graviga();
  }
  
  
  void mobilize() {
    x += speedx; // Go right
    y += speedy; // Go up
    
  }
  
 /* void graviga(){
    speedy += random(0.1 , 0.6);
    }*/
  
  void show(){
    stroke(10);
    ellipse(x, y, 60, 60); 
    
  
  }
  
  void jump() {
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
      color(230);
    }
    
    
    
    
    
  }

  void shine() {
   fill(244, 4, 4);
    
    
  }


}




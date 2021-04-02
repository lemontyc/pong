class Paddle{
  int x;
  int y;
  int speedY;
  color paddleColor;
  
  Paddle(int x, int y, color paddleColor){
    this.x = x;
    this.y = y;
    this.paddleColor = paddleColor;
  }
  
  void update(){  
    
     print(speedY, " \n");
     noStroke();
     fill(paddleColor);
     y += speedY;
     if(y + 100 > height || y < 0 ){
       y -= speedY; 
     }
     
     rect(x, y ,10, 100);
     
     
  }
  
  void moveUp(){
    speedY = -5;
  }
  
  void moveDown(){
    speedY = 5;
  }
  
  void stop(){
    speedY = 0;
  }
  
  
}

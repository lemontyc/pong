class Ball{
  int x;
  int y;
  int radius = 10;
  int speedX = 5;
  int speedY = 5;
  
  Ball(int x, int y){
    this.x = x;
    this.y = y;
  }
  
  void update(){
     x += speedX;
     y += speedY;
     
     noStroke();
     
     fill(0, 255, 0);
     circle(x, y, radius * 2);
     
     if(x + radius > width || x - radius < 0 ){
       speedX = -speedX; 
     }
     
     if(y + radius > height || y - radius < 0 ){
       speedY = -speedY; 
     }
  }
}

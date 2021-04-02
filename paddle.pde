class Paddle{
  int x;
  int y;
  int speedY;
  color paddleColor;
  int score = 0;
  boolean player;
  
  Paddle(int x, int y, color paddleColor, boolean player){
    this.x = x;
    this.y = y;
    this.paddleColor = paddleColor;
    this.player = player;
    PFont font = createFont("Squared.ttf", 60);
    textFont(font);
  }
  
  void update(){  
    noStroke();
    fill(paddleColor);
    y += speedY;
    if(y + 100 > height || y < 0 ){
      y -= speedY; 
    }
    rect(x, y ,10, 100);
    fill(255);
    // True:    Left Player
    // False:   Right Player
    if(player){
        text(str(score), width / 2 - 60, 50);
    }else{
        text(str(score), width / 2 + 30, 50);
    }
  }
  
  void moveUp(){
    speedY = -10;
  }
  
  void moveDown(){
    speedY = 10;
  }
  
  void stop(){
    speedY = 0;
  }
}

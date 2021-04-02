class Ball{
    int x;
    int y;
    int radius = 10;
    int speedX = 2;
    int speedY = speedX;
  
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

    void bounce(){
        speedX = -speedX; 
    }

    void reset(){
        x = width / 2;
        y = height /2;
        bounce();
    }
}

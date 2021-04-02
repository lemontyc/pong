class Paddle{
    int x;
    int y;
    int speedY;
    color paddleColor;
    int score = 0;
    Ball ball;
    boolean player;
    int paddleWidth = 10;
    int paddleLength = 100;
    
    Paddle(int x, int y, color paddleColor, Ball ball, boolean player){
        this.x = x;
        this.y = y;
        this.paddleColor = paddleColor;
        this.ball = ball;
        this.player = player;
        PFont font = createFont("Squared.ttf", 60);
        textFont(font);
        resetPaddle();
    }
    
    void update(){  
        noStroke();
        fill(paddleColor);
        y += speedY;
        if(y + paddleLength > height || y < 0 ){
        y -= speedY; 
        }
        rect(x, y, paddleWidth, paddleLength);
        fill(255);
        // Draw score on canvas
        // True:    Left Player
        // False:   Right Player
        if(player){
            text(str(score), width / 4, 50);
        }else{
            text(str(score), width / 2 + 200, 50);
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

    void increaseScore(){
        score++;
    }
    
    void resetPaddle(){
        y = height / 2 -  paddleLength / 2;
    }
}

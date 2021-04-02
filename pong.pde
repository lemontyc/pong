Ball ball;
Paddle leftPaddle;
Paddle rightPaddle;


void setup(){
    size(800, 600);
    ball        = new Ball(width / 2, height /2);
    leftPaddle  = new Paddle(20, height /2, color(255, 0, 0), ball, true); 
    rightPaddle = new Paddle(width - 30, height /2, color(0, 0, 255), ball, false);
}

void dottedLine(float x1, float y1, float x2, float y2, float steps){
    for(int i=0; i<=steps; i++) {
        float x = lerp(x1, x2, i/steps);
        float y = lerp(y1, y2, i/steps);
        noStroke();
        fill(255);
        rect(x, y, 2, 4);
    }
}

void draw(){
    background(0);
    dottedLine(width / 2, 0, width / 2, height, 50);
    leftPaddle.update();
    rightPaddle.update();
    ball.update();
    detectCollision();
}

void detectCollision(){
    if(ball.x - ball.radius  < leftPaddle.x + leftPaddle.paddleWidth){
        if(ball.y > leftPaddle.y && ball.y < leftPaddle.y + leftPaddle.paddleLength){
            ball.bounce();
        }else{
            rightPaddle.increaseScore();
            ball.reset();
            leftPaddle.resetPaddle();
            rightPaddle.resetPaddle();
        }
    }
    if(ball.x + ball.radius  > rightPaddle.x){
        if(ball.y > rightPaddle.y && ball.y < rightPaddle.y + rightPaddle.paddleLength){
            ball.bounce();
        }else{
            leftPaddle.increaseScore();
            ball.reset();
            leftPaddle.resetPaddle();
            rightPaddle.resetPaddle();
        }
    }

}

void keyPressed(){
    if(keyCode == UP){
        rightPaddle.moveUp();
    }
    
    if(keyCode == DOWN){
        rightPaddle.moveDown();
    }
    
    if(key == 'q'){
        leftPaddle.moveUp();
    }
  
    if(key == 'a'){
        leftPaddle.moveDown();
    }
}

void keyReleased(){
    if(keyCode == UP || keyCode == DOWN){
        rightPaddle.stop();
    }
   
    if(key == 'q' || key == 'a'){
        leftPaddle.stop();
    }
 }

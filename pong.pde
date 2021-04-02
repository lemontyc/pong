Ball ball;
Paddle leftPaddle;
Paddle rightPaddle;

void setup(){
 size(800, 600);
 ball = new Ball(10, 10);
 leftPaddle = new Paddle(10,0, color(255, 0, 0)); 
 rightPaddle = new Paddle(width - 20, 0, color(255, 0, 0));
}

void draw(){
 background(0);
 ball.update();
 leftPaddle.update();
 rightPaddle.update();
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

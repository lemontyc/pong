/**
 * Pong paddle (client) 
 * by Luis Montoya
 */

import processing.net.*;

Client c;
String input;
char data;
char dataOld;
// 0: Left
// 1: Right
int clientID = 1;  


void setup() 
{
    size(450, 255);
    background(204);
    stroke(0);
    // Connect to the server's IP address and port
    c = new Client(this, "127.0.0.1", 12345); // Replace with your server's IP and port
}

void draw() 
{   
    if(data != dataOld){
        // Send mouse coords to other person
        c.write(str(clientID) + " " + data + "\n");
    }

    dataOld = data;
    
    

  // // Receive data from server
  // if (c.available() > 0) {
  //   input = c.readString();
  //   input = input.substring(0, input.indexOf("\n")); // Only up to the newline
  //   data = int(split(input, ' ')); // Split values into an array
  //   // Draw line using received coords
  //   stroke(0);
  //   line(data[0], data[1], data[2], data[3]);
  // }
}

void keyPressed(){
    if(keyCode == UP){
        data = 'u';
    }
    
    if(keyCode == DOWN){
        data = 'd';
    }
    
    // if(key == 'q'){
    //     data = 'u';
    // }

    // if(key == 'a'){
    //     data = 'd';
    // }
}

void keyReleased(){
    if(keyCode == UP || keyCode == DOWN){
        data = 's';
    }

    // if(key == 'q' || key == 'a'){
    //     data = 's';
    // }
}
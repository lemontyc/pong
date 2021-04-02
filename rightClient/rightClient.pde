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
}

void keyPressed(){
    if(key == 'q' || keyCode == UP){
        data = 'u';
    }
    if(key == 'a' || keyCode == DOWN){
        data = 'd';
    }
}

void keyReleased(){
    if(key == 'q' || key == 'a' || keyCode == UP || keyCode == DOWN){
        data = 's';
    }
}
import processing.serial.*;    
Serial myPort;      
float input ;   

void setup ( ) {
size (800,  800 ,P3D);
myPort  =  new Serial (this,"/dev/cu.usbmodem14401", 9600); 
myPort.bufferUntil ( '\n' );   
} 

void serialEvent  (Serial myPort) {
input  =  float (myPort.readStringUntil ( '\n' ) ) ; 
} 

void draw ( ) {

if ( input == 2000 ) { 
  complex();      
} 
else if (input == 60){ 
  squareRL();
}
else {
  squareUD();  
}
}

void squareRL(){
  background(0);
  translate(width/2, height/2);
  rotateY(frameCount*PI/60);
  box(150, 150, 150); 
}

void squareUD(){
  background(0);
  translate(width/2, height/2);
  rotateY(frameCount*PI/60);
  rotateX(frameCount*PI/60);
  box(150, 150, 150);
}

void complex(){
  background(0);
  translate(width/2, height/2);
  rotateY(frameCount*PI/60);
  translate(-50, -50);
  fill(255, 0, 0);
  box(100, 100, 100);
  translate(50, -50);
  fill(255, 255, 0);
  box(100, 100, 100);
  translate(-50, 50);
  fill(0, 0, 255);
  box(100, 100, 100);
  translate(50, 50);
  fill(0, 255, 0);
  box(100, 100, 100);
}

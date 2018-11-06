PImage bg;
float px = 75;  // object position
float py = 200;  // object position
float vx = 0;  // current velocity
float vy = 0;  // current velocity
float ax = 0;  // object acceleration
float ay = 0;  // object acceleration
 
boolean[] keys = { false, false };
 
void setup() {
  size(1200, 600);
  //bg = loadImage("ShrekBG.jpg");
  //background(bg);
}
 
void draw() {
  simulate();
  render();
}
 
void simulate() {
  ax = 0;
  ax += keys[0]?-.1:0;
  ax += keys[1]?.1:0;
  ay = .32;
  vx += ax;
  vy += ay;
  px += vx;
  py += vy;
  
  if (px < 10) {
    vx = 0;
    ax = 0;
    px = 10;
  }
  if (px > 1190) {
    vx = 0;
    ax = 0;
    px = 1190;    // player boundary, if position hits 390 drops straight down instead of going outside screen
  }
 
  if (py > 575 && px > 50 && px < 750) { 
    py = 575; 
    vy = 0; 
    ay = 0;
  }
  if (py > 700) {
    px = 75;
    py = -100;
    ax = 0;
    vx = 0;
    vy = 10;    
  }
}
 
void render() {
  background(50);
  strokeWeight(3);
  stroke(0);
  //line(100, 300, 300, 300);
  //line(50, 575, 750, 575);
  fill(139, 69 ,19);
  rect(50, 575, 700, 25);
  noStroke();
  fill(0, 255, 0);
  // draw sprite
  rect(px - 10, py - 20, 20, 20);
}
 
void keyPressed(){
  if (keyCode == LEFT) {
    keys[0] = true;
  }
  if (keyCode == RIGHT) {
    keys[1] = true;
  }
  if (keyCode == UP && vy == 0) { // Only allows jumping if youre not moving vertically
    vy = -10;
  }
}
 
void keyReleased(){
  if (keyCode == LEFT) {
    keys[0] = false;
    vx = 0;
  }
  if (keyCode == RIGHT) {
    keys[1] = false;
    vx = 0;
  }
  //if (keyCode == UP) {
  //  vy = -1;
  //}
}
  

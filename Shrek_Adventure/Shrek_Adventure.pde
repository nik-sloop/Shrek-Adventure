float px = 75;  // object position
float py = 200;  // object position
float vx = 0;  // current velocity
float vy = 0;  // current velocity
float ax = 0;  // object acceleration
float ay = 0;  // object acceleration
int character = 1; // keeps track of which character is selected
int jump = -5; // controls the jump height of the characters

// creates variables for the images
PImage bg;
PImage shrek;
PImage donkey;
PImage grass;
PImage logs;
PImage Rocks;
PImage swampwater;


boolean[] keys = { false, false};
 
void setup() {
  size(1200, 600);
  //bg = loadImage("ShrekBG.jpg");
  //background(bg);
  scale(.05);
  shrek = loadImage("ShrekIdleSprite2.png");
  donkey = loadImage("DonkeySpriteIdle2.png");
  grass = loadImage("BreakableGrassSprite.png");
  Rocks = loadImage("breakableRockSprite.png");
  logs = loadImage("BreakableLogsSprite.png");
  swampwater = loadImage("swampwater.png");
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
 
  if (py > 575 && px > 50 && px < 750 || py > 575 && px > 900 && px < 1400) { 
    py = 575; 
    vy = 0; 
    ay = 0;
  }
  
  if (py > 450 && px > 780 && px < 880) {
    py = 450; 
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
  // Background
  background(50);
  strokeWeight(3);
  stroke(0);
  //line(100, 300, 300, 300);
  //line(50, 575, 750, 575);
  fill(139, 69 ,19);
  
  // Platforms
  rect(50, 575, 700, 25);
  rect(900, 575, 500, 25);
  rect(780, 450, 100, 25);
  noStroke();
  fill(0, 255, 0);
  //rect(px - 10, py - 20, 20, 20);
  
  // Sprites
  scale(.05); // Properly scales the sprite
  if (character == 1) { // determines which sprite to display
    image(shrek, 20 *(px-20),20 *(py-45)); // Shrek
    jump = -5; // Shek's jump height
  } else {
    image(donkey, 20 *(px-20),20 *(py-45)); // Donkey
    jump = -10; // Donkey jumps higher than Shrek
  }
  
  image(grass, 20000, 10600);
  image(grass, 13000, 10600);
  image(grass, 14000, 10600);
  image(grass, 10000, 10600);
  image(grass, 9400, 10600);
  image(grass, 1050, 10600);
  image(grass, 11000, 10600);
  image(grass, 12300, 10600);
  image(grass, 8000, 10600);
  image(grass, 65500, 10600);
  image(grass, 14000, 10600);
  image(grass, 4000, 10600);
  image(grass, 5400, 10600);
  image(grass, 2950, 10600);
  image(grass, 1100, 10600);
  
  image(Rocks, 19000, 10600);
  image(Rocks, 19800, 10600);
  image(logs, 21400, 10600);
  image(logs, 20500, 10600);
  
  
  image(swampwater, 15000, 11500);



  
  // Tries to flip the image to face the direction the character is moving
  //pushMatrix();
  //if(keys[0] == true) {
  // scale(1,1); 
  //} else if (keys[1] == true) {
  // scale(-1, 1); 
  //}
  //popMatrix();
  
}
 
 // Moves character
void keyPressed(){
  if (keyCode == LEFT) { // Moves left
    keys[0] = true;
  }
  if (keyCode == RIGHT) { // Moves right
    keys[1] = true;
  }
  // Jump
  if (keyCode == ' ' && vy == 0) { // Only allows jumping if youre not moving vertically
    vy = jump;
  }
  
  // Toggles character selection
  if (keyCode == 'E') {
     character = character * -1;
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
  

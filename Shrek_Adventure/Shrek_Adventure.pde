//import ddf.minim.*;
//AudioPlayer background;
//AudioPlayer shrek1;
//AudioPlayer waffles;
//Minim minim;

float vx = 0;  // current velocity
float vy = 0;  // current velocity
float ax = 0;  // object acceleration
float ay = 0;  // object acceleration

int characterHeight = 50;
int characterWidth = 20;
character[] shrekCharacters; 
object[] obsticles;

int character = 0; // keeps track of which character is selected


// creates variables for the images
PImage bg;
PImage shrek;
PImage donkey;

PImage grass;
PImage logs;
PImage Rocks;
PImage swampwater;
PImage outhouse;

boolean[] keys = { false, false};

void setup() {
  size(1200, 700);
  //fullScreen();
  //bg = loadImage("ShrekBG.jpg");
  //background(bg);
  scale(.05);
  shrek = loadImage("ShrekIdleSprite2.png");
  donkey = loadImage("DonkeySpriteIdle2.png");

  shrekCharacters = new character[2];
  shrekCharacters[0] = new character(110,450,20,50, vx,vy,1); 
  shrekCharacters[1] = new character(110,470,40,30, vx,vy,2);
  obsticles = new object[10];
  obsticles[0] = new object(0,530,700,10,0,0,0); // ground
  obsticles[1] = new object(500,450,50,50,0,0,0);
  obsticles[2] = new object(600,325,80,10,0,0,0);
  obsticles[3] = new object(750,225,80,10,0,0,0);

  grass = loadImage("BreakableGrassSprite.png");
  Rocks = loadImage("breakableRockSprite.png");
  logs = loadImage("BreakableLogsSprite.png");
  swampwater = loadImage("swampwater.png");
  outhouse = loadImage("outhouse.png");
  //minim = new Minim(this);
  //background = minim.loadFile("background2.mp3");
  //shrek1 = minim.loadFile("shrek.mp3");
  //waffles = minim.loadFile("Waffles.mp3");
  //background.loop();
}
 
void draw() {
  simulate();
  render();
}
 
void simulate() {
  shrekCharacters[character].update();
  ax = 0;
  ax += keys[0]?-.1:0;
  ax += keys[1]?.1:0;
  ay = .32;
  vx += ax;
  vy += ay;
  shrekCharacters[character].setVX(vx);
  shrekCharacters[character].setVY(vy);
  
 
  if (shrekCharacters[character].getxpos() > 1190) {
    shrekCharacters[character].setVX(0);
    ax = 0;
    shrekCharacters[character].setxpos(1190);
  }
 
  if (shrekCharacters[character].getypos() > 780) { 
    shrekCharacters[character].setypos(150);
    shrekCharacters[character].setxpos(150);
    vy = 0;   
    ay = 0;
    println("VY after falling: " +shrekCharacters[character].getVY());
  }
  for(int i=0; i < obsticles.length; i++){
    if(obsticles[i] != null){
      obsticles[i].update();
    }
  }  
  objectSensing();
}
void render() {

//set background
  background(50);
  strokeWeight(3);
  stroke(0);
  fill(139, 69 ,19);
  
  drawObsticles();
  drawCharacters();
}
void drawCharacters(){
  
  if(shrekCharacters[character].getCharacter() == 1){
      shrekCharacters[1].d();
  }
  if(shrekCharacters[character].getCharacter() == 2){
      shrekCharacters[0].d();
  }
  shrekCharacters[character].d(); // draw shrek
}
void drawObsticles(){
  for(int i=0; i < obsticles.length; i++){ //draw obsticles
    if(obsticles[i] != null){
      obsticles[i].d();
    }
  }
}

void objectSensing(){
  for(int i = 0; i < obsticles.length; i++){
      if(obsticles[i] != null){
        if(isTouching(shrekCharacters[character],obsticles[i]) == 1){          
          shrekCharacters[character].setypos(obsticles[i].getypos()- shrekCharacters[character].geth());
          vy = 0;
          ay = 0;            
        }
        if(isTouching(shrekCharacters[character],obsticles[i]) == 2){
          shrekCharacters[character].setxpos(obsticles[i].getxpos()-shrekCharacters[character].getw());
          vy = 0;
          ay = 0;           
        }
        if(isTouching(shrekCharacters[character],obsticles[i]) == 3){
          shrekCharacters[character].setxpos(obsticles[i].getxpos()+obsticles[i].getw());
          vy = 0;
          ay = 0;           
        }
      }
}
  
  //// Sprites
  //scale(.05); // Properly scales the sprite
  //image(outhouse, 1150, 10300);
  //image(grass, 20000, 10600);
  //image(grass, 13000, 10600);
  //image(grass, 14000, 10600);
  //image(grass, 10000, 10600);
  //image(grass, 9400, 10600);
  //image(grass, 10050, 10600);
  //image(grass, 11000, 10600);
  //image(grass, 12300, 10600);
  //image(grass, 8000, 10600);
  //image(grass, 65500, 10600);
  //image(grass, 14000, 10600);
  //image(grass, 4000, 10600);
  //image(grass, 5400, 10600);
  //image(grass, 3050, 10600);
  //image(grass, 2500, 10600);
  
  //image(Rocks, 19000, 10100);
  //image(Rocks, 20000, 10100);
  //image(logs, 21400, 10100);
  //image(logs, 22500, 10100);
  
  
  //image(swampwater, 15000, 11500);



  
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
  if (key == 'a') {
    keys[0] = true;
  }
  if (key == 'd') {
    keys[1] = true;
  }
  if (key == 'w' && vy == 0) { // Only allows jumping if youre not moving vertically
    if(character == 0){
      vy = -6;
      shrekCharacters[character].setVY(-6);
    }
    if(character == 1){
      vy = -8;
      shrekCharacters[character].setVY(-8);
    }
  }
  if(key == 'e' && vy == 0){
    if(shrekCharacters[character].getCharacter() == 1){
      shrekCharacters[0].d();
      character = 1;
    } else {
      shrekCharacters[1].d();
      character = 0;
    }
}
}
 
void keyReleased(){
  if (key == 'a') {
    keys[0] = false;
    vx = 0;
  }
  if (key == 'd') {
    keys[1] = false;
    vx = 0;
  }
  //if (keyCode == UP) {
  //  vy = -1;
  //}
}

int isTouching(character h1, object h2){
  // if from the bottom
  //if((h1.getypos() - h2.getypos() <= h2.geth()) && ((h1.getypos()-h2.getypos() > 0))){
  //  for(int i =0; i < h1.getw(); i++){
  //      if((h2.getxpos() < (h1.getxpos() + i)) && ((h1.getxpos() +i) <(h2.getxpos()+h2.getw()))){
  //        println("0");
  //        return 0;
  //      }
  //  }
  //}
  // if from the top
  if(((h2.getypos()-h1.getypos()) <= h1.geth()) && ((h2.getypos()-h1.getypos()) > 0)){
    for(int i =0; i < h1.getw(); i++){
        if((h2.getxpos() < (h1.getxpos() + i)) && ((h1.getxpos() +i) <(h2.getxpos()+h2.getw()))){
          println("1");
          return 1;
        }
    }
  }
  //if from the left
  if(((h2.getxpos() - h1.getxpos()) <= h1.getw())&& (h2.getxpos() - h1.getxpos()) >0){
    for(int i =0; i < h1.geth(); i++){     
        if((((h1.getypos() + i)) > h2.getypos()) && (h1.getypos() + i) < h2.getypos() + h2.geth()){
          println("2");
          return 2;
        }
      }
  }
   //if from the right
  if(((h1.getxpos() - h2.getxpos()) <= h2.getw()) && ((h1.getxpos() - h2.getxpos()) > 0)){
   for(int i =0; i < h1.geth(); i++){    
      if((((h1.getypos() + i)) > h2.getypos()) && (h1.getypos() + i) < h2.getypos() + h2.geth()){
        println("3");
        return 3;
        }
    }
  }
  return -1;
}

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
object[][] obsticles;

int character = 0; // keeps track of which character is selected
int level = 0;

// creates variables for the images
PImage bg;
PImage shrek;
PImage donkey;

PImage grass;
PImage logs;
PImage rocks;
PImage swampwater;
PImage outhouse;

boolean[] keys = { false, false};

void setup() {
  size(1200, 700); // set scree size
  image_Loader();  // load all of the needed images
  loadCharacters(); // create characters
  loadLevels();     // load all the obsticles for each level
   
  size(1200, 700);
  // fullScreen();
  //bg = loadImage("ShrekBG.jpg");
  image_Loader(); // Loads all of the images used.
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
 // Moves character
void keyPressed(){ // Moves character left
  if (key == 'a') {
    keys[0] = true;
  }
  if (key == 'd') { // Moves character right
    keys[1] = true;
  }
  if (key == 'w' && vy == 0 ){ // Only allows jumping if youre not moving vertically
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
    if(shrekCharacters[character].getCharacter() == 0){
      shrekCharacters[0].d();
      character = 1;
    } else {
      shrekCharacters[1].d();
      character = 0;
    }
  }
}
  
 
void keyReleased(){
  if (key == 'a') { // Stops the character from moving
    keys[0] = false;
    vx = 0;
  }
  if (key == 'd') {  // Stops the character from moving
    keys[1] = false;
    vx = 0;
  }
}

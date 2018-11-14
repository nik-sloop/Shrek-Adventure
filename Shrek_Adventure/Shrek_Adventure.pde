// Loads all of the audio players
//import ddf.minim.*;
//AudioPlayer background; // Background music
//AudioPlayer shrek1; // Shrek's catchphrase
//AudioPlayer waffles; // Donkey's catchphrase
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
int level = 0; // keeps track of which level the player is on

// creates variables for the images
PImage bg;
PImage shrek;
PImage donkey;

PImage grass;
PImage logs;
PImage rocks;
PImage swampwater;
PImage outhouse;
PImage menu;

// Creates an array for the left and right controls
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
  
  // Starts all of the music
  //minim = new Minim(this);
  //background = minim.loadFile("background2.mp3");
  //shrek1 = minim.loadFile("shrek.mp3");
  //waffles = minim.loadFile("Waffles.mp3");
  //background.loop();
}
 
// Draws the map 
void draw() {
  simulate();
  render();
} 
// Is called when a key is pressed
void keyPressed(){ 
  // Moves character left
  if (key == 'a') {
    keys[0] = true;
  }
  // Moves character right
  if (key == 'd') { 
    keys[1] = true;
  }
  
  /*
      Checks to see which character is selected
      and then applies the correct jump height.
  */
  if (key == 'w' && vy == 0 ){ // Causes the charcter to jump
      if(character == 0){
        vy = -6; // Prevents the character from jumping in air
        shrekCharacters[character].setVY(-6); // Jump height
      }
      if(character == 1){
        vy = -8; // Prevents the character from jumping in air
        shrekCharacters[character].setVY(-8); // Jump height 
      }
    }    
  if(key == 'e' && vy == 0){ // Switches between characters.
    if(shrekCharacters[character].getCharacter() == 0){
      shrekCharacters[0].d();
      character = 1;
    } else {
      shrekCharacters[1].d();
      character = 0;
    }
  }
}
  
// Is called when a key is released 
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

/*
  This class contains all the information need for each character in the game.
  Such as their hit box, their starting location, their currentl location,
  their velocity, and which sprite to use for them.
*/

class character { 
  float xpos, ypos; // Current location of the character
  int wid, hei;
  float speedx, speedy; // Velocity of the character
  int character; // Character variable
  // This is used to create smooth movement of the character.
  character (float x, float y,int w, int h, float vx, float vy, int c) {  
    xpos = x;
    ypos = y; 
    wid = w;
    hei =h;
    speedx = vx;
    speedy = vy;
    character = c;
  } 
  void update() { 
    xpos += speedx;
    ypos += speedy; 
  } 
  float getxpos(){
    return xpos;
  }
   float getypos(){
    return ypos;
  }
  void setxpos(float xp){
    xpos = xp;
  }
  void setypos(float yp){
    ypos = yp;
  }
  int getw(){
    return wid;
  }
  int geth(){
    return hei;
  }
  float getVY(){
  return speedy;
  }
  void setVX(float vx){
    speedx = vx;
  }
  void setVY(float vy){
    speedy = vy;
  }
  int getCharacter(){
    return character;
  }
  void setCharacter(int i){ // Sets what character is currently selected
    character = i;
  }
  void d(){
    // Is true if Shrek is selected    
    if(character == 0){
      noFill();
      noStroke();
      rect(xpos,ypos,wid,hei); // Creates a hit box around the character
      scale(.05);
      image(shrek,(xpos*20)-300,(ypos*20)); // Sets starting position and sprite
      scale(20);
    }
    // Is true if Donkey is selected
    if(character == 1){
      fill(255);
      noFill();
      noStroke();
      rect(xpos,ypos,wid,hei); // Creates a hit box around the character
      scale(.05);
      image(donkey,(xpos*20)-150,(ypos*20)-330); // Sets starting position and sprite
      scale(20);
    }
  }
}

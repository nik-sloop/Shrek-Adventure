/*
  This class calls all the other classes that are used
  to render the level. 
*/
void render() {

//set background
  background(50);
  drawBackgroundImages();
  drawObsticles();
  drawCharacters();
  
}

void drawBackgroundImages(){
  if (level ==0){
    image(backgroundtree,0,0, 350,530);
    image(backgroundtree,300,0, 240,530);
    image(backgroundtree,720,0, 300,530);
    image(outhouse,40,440, 90, 90);
    image(swampwater,570, 440,270,270);
    fill(255);
    rect(20, 20, 30, 30);
    
  }
  if(level == 2){
    image(swampwater,580, 440,290,270);
    image(swampwater,200, 440,290,270);
    fill(255);
    rect(20, 20, 30, 30);
    
  }
  
  
}
// Draws the appropriate character
void drawCharacters(){
  
  if(shrekCharacters[character].getCharacter() == 0){
      shrekCharacters[1].d();
  }
  if(shrekCharacters[character].getCharacter() == 1){
      shrekCharacters[0].d();
  }
  shrekCharacters[character].d(); // draw shrek
}
void drawObsticles(){
  for(int i=0; i < obsticles[level].length; i++){ //draw obsticles
    if(obsticles[level][i] != null){
      obsticles[level][i].d();
    }
  }
}

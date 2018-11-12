void render() {

//set background
  background(50);
  drawObsticles();
  drawCharacters();
}
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

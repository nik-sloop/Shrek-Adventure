void loadCharacters(){
  /*
     Creates an array with all the charcters and their details, 
     such as the starting location and what sprite to use
     for them.
  */
  shrekCharacters = new character[2];
  shrekCharacters[0] = new character(110,450,20,50, vx,vy,0); 
  shrekCharacters[1] = new character(110,450,25,30, vx,vy,1); 
}

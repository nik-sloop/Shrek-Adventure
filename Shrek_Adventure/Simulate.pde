void simulate() {
  
  shrekCharacters[character].update(); // update characters position based on the simulation
  
  ax = 0;
  ax += keys[0]?-.1:0;
  ax += keys[1]?.1:0;
  ay = .32;
  vx += ax;
  vy += ay;
  shrekCharacters[character].setVX(vx);
  shrekCharacters[character].setVY(vy);
  
 
  if (shrekCharacters[character].getxpos() > 1170) {   
    ax = 0;
    vx =0;
    vy = 0;
    nextLevel();
    
    shrekCharacters[0].setxpos(110);
    shrekCharacters[0].setypos(480);  
    shrekCharacters[1].setxpos(110);
    shrekCharacters[1].setypos(500);
  }
  if (shrekCharacters[character].getypos() > 780) { 
    shrekCharacters[character].setypos(490);
    shrekCharacters[character].setxpos(150);
    vy = 0;   
    ay = 0;
    println("VY after falling: " +shrekCharacters[character].getVY());
  }
  println(level);
  for(int i=0; i < obsticles[level].length; i++){
    if(obsticles[level][i] != null){
      obsticles[level][i].update();
    }
  }  
  detectObject();
}
void nextLevel(){
  if(level == 0){
    level = 1;
  } else if (level == 1){
    level = 2;
  } else if (level == 2){
    level = 3;
  }
}
void detectObject(){
  for(int i = 0; i < obsticles[level].length; i++){
      if(obsticles[level][i] != null){
        if(isTouching(shrekCharacters[character],obsticles[level][i]) == 1){          
          shrekCharacters[character].setypos(obsticles[level][i].getypos()- shrekCharacters[character].geth());
          vy = 0;
          ay = 0;           
        }
        if(isTouching(shrekCharacters[character],obsticles[level][i]) == 2){
          shrekCharacters[character].setxpos(obsticles[level][i].getxpos()-shrekCharacters[character].getw()); 
          vx =0;
        }
        if(isTouching(shrekCharacters[character],obsticles[level][i]) == 3){
          shrekCharacters[character].setxpos(obsticles[level][i].getxpos()+obsticles[level][i].getw()); 
          vx=0;
        }
        if(isTouching(shrekCharacters[character],obsticles[level][i]) == 0){          
          shrekCharacters[character].setypos(obsticles[level][i].getypos()+ obsticles[level][i].geth());
          vy = 0;
          ay = 0;           
        }
      }
   } 
}
int isTouching(character h1, object h2){
  // if from the bottom
  if((h1.getypos() - h2.getypos() <= h2.geth()) && ((h1.getypos()-h2.getypos() > h2.geth()-20))){
    for(int i =0; i < h1.getw(); i++){
        if((h2.getxpos() < (h1.getxpos() + i)) && ((h1.getxpos() +i) <(h2.getxpos()+h2.getw()))){
          println("0");
          return 0;
        }
    }
  }
  // if from the top
  if(((h2.getypos()-h1.getypos()) <= h1.geth()) && ((h2.getypos()-h1.getypos()) > h1.geth()-20)){
    for(int i =0; i < h1.getw(); i++){
        if((h2.getxpos() < (h1.getxpos() + i)) && ((h1.getxpos() +i) <(h2.getxpos()+h2.getw()))){
          println("1");
          return 1;
        }
    }
  }
  //if from the left
  if(((h2.getxpos() - h1.getxpos()) <= h1.getw()) && (h2.getxpos() - h1.getxpos()) > h1.getw()-20){
    for(int i =0; i < h1.geth(); i++){     
        if((((h1.getypos() + i)) > h2.getypos()) && (h1.getypos() + i) < h2.getypos() + h2.geth()){
          println("2");
          return 2;
        }
      }
  }
   //if from the right
  if(((h1.getxpos() - h2.getxpos()) <= h2.getw()) && ((h1.getxpos() - h2.getxpos()) > h2.getw()-20)){
   for(int i =0; i < h1.geth(); i++){    
      if((((h1.getypos() + i)) > h2.getypos()) && (h1.getypos() + i) < h2.getypos() + h2.geth()){
        println("3");
        return 3;
        }
    }
  }
  return -1;
}

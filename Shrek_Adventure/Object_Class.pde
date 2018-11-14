  class object { 
  float xpos, ypos;
  int wid, hei;
  float speedx, speedy; 
  int obsticle;
  int upperY, lowerY, upperX, lowerX;
  object (float x, float y,int w, int h, float vx, int uX, int lX,float vy,int uY, int lY, int o) {  
    xpos = x;
    ypos = y; 
    wid = w;
    hei =h;
    speedx = vx;
    speedy = vy;
    obsticle = o;
    upperY = uY;
    lowerY = lY;
    upperX = uX;
    lowerX =lX;
  } 
  void update() { 
    xpos += speedx;
    ypos += speedy; 
    if (ypos > upperY) { 
      speedy *= -1; 
    } 
    if (ypos < lowerY) { 
      speedy *= -1 ; 
    }
    if (xpos > upperX) { 
      speedx *= -1; 
    } 
    if (xpos < lowerX) { 
      speedx *= -1; 
    }
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
  float getVX(){
  return speedx;
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
  void setCharacter(int i){
    character = i;
  }
  void d(){
    if(obsticle == 0){
      fill(139, 69 ,19);
      strokeWeight(3);
      stroke(0);
      rect(xpos, ypos, wid, hei);   
    }    
    if(obsticle == 1){
      //fill(255);
      noFill();
      noStroke();
      rect(xpos,ypos,wid,hei);
      scale(.125);
      image(grass,(xpos*8)-200,(ypos*8)-310);
      scale(8);
    }
    if(obsticle == 2){
      fill(255);
      noFill();
      noStroke();
      rect(xpos,ypos,wid,hei);
      scale(.1);
      image(rocks,(xpos*10)-200,(ypos*10)-600);
      scale(10);
    }
    if(obsticle == 3){
      fill(255);
      noFill();
      noStroke();
      rect(xpos,ypos,wid,hei);
      scale(.05);
      image(logs,(xpos*20)-175,(ypos*20)-400);
      scale(20);
    } 
    if(obsticle == 4){
      fill(255);
      noFill();
      noStroke();
      rect(xpos,ypos,wid,hei);
      scale(.25);
      image(menu,(xpos*20)-175,(ypos*20)-400);
      scale(20);
    }
<<<<<<< HEAD
    if(obsticle == 4){
      fill(255);
      textSize(20);
      text("Donkey can jump higher than Shrek and fit through tight area.",150, 100);
      text("E = change Character", 150, 150);
      text("A = Left", 150, 200);
      text("D = Right", 150, 250);
      text("W = JUMP", 150, 300);
    }
    if(obsticle == 5){
      fill(255);
      textSize(100);
      text("TO BE CONTINUED....", 150, 100);
      textSize(30);
      text("Press Esc to Exit", 500, 200);
    }
    if(obsticle == 6){
      fill(255);
      textSize(20);
      text("Get over here", 1000,100);
    }
    if(obsticle == 7){
      fill(255);
      textSize(20);
      text("Get over here", 1000,500);
    }
    if(obsticle == 8){
      fill(255);
      textSize(85);
      text("SKILL LEVEL 99999 MODE", 100, 100);
    }
=======
    
>>>>>>> fedb8007659bfdf5ff1bbf58d2877a6da1f83541
  }
}

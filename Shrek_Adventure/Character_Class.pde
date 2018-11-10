class character { 
  float xpos, ypos;
  int wid, hei;
  float speedx, speedy; 
  int character;
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
    if (ypos > height) { 
      speedy *= -1; 
    } 
    if (ypos < 0) { 
      speedy *= -1 ; 
    }
    if (xpos > width) { 
      speedx *= -1; 
    } 
    if (xpos < 0) { 
      speedx *= -1; 
    }
    if(character == 1){
      characterHeight =50;
      characterWidth = 20;
    }
    if(character == 2){
      characterHeight =20;
      characterWidth = 50;
    }
    //rect(xpos, ypos, wid, hei); 
    //println(ypos);
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
  void setCharacter(int i){
    character = i;
  }
  void d(){
    if(character == 0){
      rect(xpos, ypos, wid, hei);
      
      
      
    }    
    if(character == 1){
      noFill();
      noStroke();
      rect(xpos,ypos,20,50);
      scale(.05);
      image(shrek,(xpos*20)-300,(ypos*20));
      scale(20);
    }
    if(character == 2){
      noFill();
      noStroke();
      rect(xpos,ypos,40,30);
      scale(.05);
      image(donkey,(xpos*20)-100,(ypos*20)-330);
      scale(20);
    }
  }
}

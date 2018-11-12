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
      noFill();
      noStroke();
      rect(xpos,ypos,wid,hei);
      scale(.05);
      image(shrek,(xpos*20)-300,(ypos*20));
      scale(20);
    }
    if(character == 1){
      fill(255);
      noFill();
      noStroke();
      rect(xpos,ypos,wid,hei);
      scale(.05);
      image(donkey,(xpos*20)-150,(ypos*20)-330);
      scale(20);
    }
  }
}

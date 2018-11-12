void loadLevels(){
  ///////obstical parameters: (xPosition, Yposition, Width, Height, xMovement, xUpperLimit, xLowerLimit, yMovement, yUpperLimit, yLowerLimit, obstical type)////////
  
  obsticles = new object[3][20];
  int grassWidth = 60;
  int grassHeight = 80;
  int rockHeight = 80;
  int rockWidth = 110;
  int logHeight = 55;
  int logWidth = 55;
  //level 1
  obsticles[0][0] = new object(0,530,700,10,0,0,0,0,0,0,0); // ground
  obsticles[0][5] = new object(1100,530,100,10,0,0,0,0,0,0,0); // ground
  obsticles[0][1] = new object(500,450,50,50,0,0,0,0,0,0,0); //box
  obsticles[0][2] = new object(600,355,80,10,0,0,225,425,0,0,0); //first jump
  obsticles[0][3] = new object(750,255,80,10,0,0,0,0,800,750,0); //second jump
  //obsticles[0][4] = new object(350,170,30,300,0,0,0,0,0,0,0); // wall
  obsticles[0][6] = new object(350,450,grassWidth,grassHeight,0,0,0,0,0,0,1); // grass
  obsticles[0][4] = new object(150,450,rockWidth,rockHeight,0,0,0,0,0,0,2); //rock
  obsticles[0][7] = new object(1000,450,logWidth,logHeight,0,0,0,0,0,0,3); // log
  
  //level 2
  obsticles[1][0] = new object(0,530,700,10,0,0,0,0,0,0,0); // ground
  
  
}

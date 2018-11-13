/*
  This class contains all the information needed to render each
  level in the game. It has the location of all the platforms and sprites
  as well as their size and if they are moving across the screen.
*/

void loadLevels(){
  ///////obstical parameters: (xPosition, Yposition, Width, Height, xMovement, xUpperLimit, xLowerLimit, yMovement, yUpperLimit, yLowerLimit, obstical type)////////
  
  // Creates a multi-dimensional array with three levels and all the objects in those levels
  obsticles = new object[3][25];
  int grassWidth = 60;
  int grassHeight = 80;
  int rockHeight = 80;
  int rockWidth = 110;
  int logHeight = 55;
  int logWidth = 55;
  
 /////level 1
  obsticles[0][0] = new object(0,530,575,175,0,0,0,0,0,0,0); // ground 1
  obsticles[0][1] = new object(800,530,400,175,0,0,0,0,0,0,0); // ground 2
  obsticles[0][2] = new object(500,400,grassWidth,grassHeight,0,0,0,0,0,0,1); // second grass top
  obsticles[0][3] = new object(630,355,80,10,0,0,0,0,0,0,0); // first jump
  obsticles[0][4] = new object(950,0,250,500,0,0,0,0,0,0,0); // first box
  obsticles[0][5] = new object(350,450,grassWidth,grassHeight,0,0,0,0,0,0,1); // first grass
  obsticles[0][6] = new object(200,475,logWidth,logHeight,0,0,0,0,0,0,3); // first log
  obsticles[0][7] = new object(500,450,grassWidth,grassHeight,0,0,0,0,0,0,1); // second grass bottom
  obsticles[0][8] = new object(800,450,grassWidth,grassHeight,0,0,0,0,0,0,1); // third grass bottom
  obsticles[0][9] = new object(800,400,grassWidth,grassHeight,0,0,0,0,0,0,1); // third grass middle
  obsticles[0][10] = new object(800,350,grassWidth,grassHeight,0,0,0,0,0,0,1); // third grass top
  //obsticles[0][11] = new object(150,450,rockWidth,rockHeight,0,0,0,0,0,0,2); //rock
  
  
  //level 2
  obsticles[1][0] = new object(0,530,800,175,0,0,0,0,0,0,0); // ground 1 (layer 1)
  obsticles[1][1] = new object(25,270,rockWidth,rockHeight,0,0,0,0,0,0,2); //rock
  //obsticles[1][2] = new object(750,255,80,10,0,0,0,0,0,0,0); //second jump
  obsticles[1][3] = new object(0,350,500,25,0,0,0,0,0,0,0); // ground 1 (layer 2)
  obsticles[1][4] = new object(600,350,475,25,0,0,0,0,0,0,0); // ground 2 (layer 2)
  obsticles[1][5] = new object(1175,170,25,580,0,0,0,0,0,0,0); // wall right
  obsticles[1][6] = new object(900,530,300,175,0,0,0,0,0,0,0); // ground 2 (layer 1)
  obsticles[1][7] = new object(1065,475,logWidth,logHeight,0,0,0,0,0,0,3); // first log
  obsticles[1][8] = new object(1120,475,logWidth,logHeight,0,0,0,0,0,0,3); // second log bottom
  obsticles[1][9] = new object(1120,420,logWidth,logHeight,0,0,0,0,0,0,3); // second log top
  obsticles[1][10] = new object(125,170,1050,25,0,0,0,0,0,0,0); // ground 1 (layer 3)
  obsticles[1][11] = new object(0,0,25,350,0,0,0,0,0,0,0); // wall left
  obsticles[1][12] = new object(250,90,grassWidth,grassHeight,0,0,0,0,0,0,1); // first grass (layer 3)
  obsticles[1][13] = new object(650,270,grassWidth,grassHeight,0,0,0,0,0,0,1); // first grass (layer 2)
  obsticles[1][14] = new object(350,450,grassWidth,grassHeight,0,0,0,0,0,0,1); // first grass (layer 1)
  
  //level 3
  obsticles[2][0] = new object(0,530,200,175,0,0,0,0,0,0,0); // ground 1
  obsticles[2][1] = new object(450,530,150,175,0,0,0,0,0,0,0); // ground 2
  obsticles[2][2] = new object(850,530,1200,175,0,0,0,0,0,0,0); // ground 3
  obsticles[2][3] = new object(450,450,grassWidth,grassHeight,0,0,0,0,0,0,1); // first grass
  obsticles[2][4] = new object(50,450,100,10,0,0,0,1,330,530,0); // first jump
  obsticles[2][5] = new object(225,130,100,10,0,0,0,1,130,360,0); // second jump
  obsticles[2][6] = new object(650,530,100,10,1,650,700,1,0,0,0); // second jump x move, x up, x low, y move, y up, y low
  //obsticles[2][1] = new object(
}

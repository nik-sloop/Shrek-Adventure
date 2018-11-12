/* 
This class creates the level by assigning objects to an array.
These objects are then called by the main class and the
obsticles are draw according to their cord
*/

void level_1() {
  // Creates the array of objects
  obsticles = new object[15];
  
  // Ground
  obsticles[0] = new object(0,680,550,20,0,0,0); 
  obsticles[1] = new object(1000,680,450,20,0,0,0);
  
  // Platforms
  obsticles[2] = new object(600,580,80,10,0,0,0);
  obsticles[4] = new object(800,600,80,10,0,0,0);  
  obsticles[5] = new object(1125,525,80,10,0,0,0);
  obsticles[6] = new object(925,425,80,10,0,0,0);
  obsticles[7] = new object(725,375,80,10,0,0,0);
  obsticles[8] = new object(575,325,80,10,0,0,0);
  obsticles[9] = new object(800,225,80,10,0,0,0);
  obsticles[10] = new object(1125,225,80,10,0,0,0);
  obsticles[11] = new object(1000,125,80,10,0,0,0);
  obsticles[12] = new object(400,125,400,10,0,0,0);
  obsticles[13] = new object(0,125,80,10,0,0,0);
  
  //// Sprites
  scale(.05); // Properly scales the sprite
  // image(outhouse, 575, 680);
  //image(grass, 20000, 10600);
  //image(grass, 13000, 10600);
  //image(grass, 14000, 10600);
  //image(grass, 10000, 10600);
  //image(grass, 9400, 10600);
  //image(grass, 10050, 10600);
  //image(grass, 11000, 10600);
  //image(grass, 12300, 10600);
  //image(grass, 8000, 10600);
  //image(grass, 65500, 10600);
  //image(grass, 14000, 10600);
  //image(grass, 4000, 10600);
  //image(grass, 5400, 10600);
  //image(grass, 3050, 10600);
  //image(grass, 2500, 10600);
  
  //image(Rocks, 19000, 10100);
  //image(Rocks, 20000, 10100);
  //image(logs, 21400, 10100);
  //image(logs, 22500, 10100);
  
  
  //image(swampwater, 15000, 11500);
  
  
  
  
}

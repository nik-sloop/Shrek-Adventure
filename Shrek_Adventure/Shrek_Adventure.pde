//Created by Luke Meads, Andre Kerlin, Joston Chan, Nik Sloop, Zac Stephan, Will Webb

//import ddf.minim.*;
//AudioPlayer music;
//AudioPlayer shrek;
//AudioPlayer donkey;
//AudioPlayer broken;
//AudioPlayer die;
//Minim minim;
//String mapString = "                                                      " +
//                   "                                                      " +
//                   "                                                      " +
//                   "                                                      " +
//                   "                                                      " +
//                   "                       XXXX                           " +
//                   "                                                      " +
//                   "                                                      " +
//                   "                                                      " +
//                   "                                                      " +
//                   "                                                      " +
//                   "                                                      " +
//                   "                                                      " +
//                   "                                                      " +
//                   "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            
//int xL = 54;
//int yL = 15;
//char[][] map = new char[xL][yL];

//int playerX = 1;
//int playerY = 10;
//float oldX = playerX;
//float oldY = playerY;
            
            
//void setup(){
//  size(800, 500);
//  makeMapArray();
//  minim = new Minim(this);
//  music = minim.loadFile("background2.mp3", 2048);
//  shrek = minim.loadFile("shrek.mp3", 2048);
//  music.loop();
//}

//void draw(){
//  oldX = (oldX * 9 + playerX) / 10;
//  oldY = (oldY * 9 + playerY) /10;
//  background(255);
//  scale(15, 15);
//  translate(0, 17);
//  drawMap();
//  skrek();
//}

//void drawMap() {
  
//  for (int y = 0; y < yL; y++)
//    for (int x = 0; x < xL; x++)
//      if (map[x][y] == 'X')
//        rect(x, y, 1, 2);
//}

//void makeMapArray() {
//  int i = 0;
  
//  for (int y = 0; y < yL; y++)
//    for (int x = 0; x < xL; x++)
//      map[x][y] = mapString.charAt(i++);
//}

//void skrek(){
//  ellipse(oldX, oldY, .5, .5);
  
//}

//void keyPressed(){
// if(keyCode == LEFT){
//   playerX -= 1;
// }
// if(keyCode == RIGHT){
//   if(map[playerX][playerY] == 'X'){
     
//   }
//   else{
//     playerX += 1;
//   }
// }
// if(keyCode == UP){
//   if(playerY <= -2){
//   }
//   else{
//     playerY -= 1;
//   }
// }
// if(keyCode == DOWN){
//   playerY += 1;
// }
 
// if(key == 'm'){
//   shrek.play();
// }
// println(playerX, playerY);
// println(oldX, oldY);
//}



//GRAVITY?

//Created by Luke Meads, Andre Kerlin, Joston Chan, Nik Sloop, Zac Stephan, Will Webb
// this version has basic gravity

//import ddf.minim.*;
//AudioPlayer music;
//AudioPlayer shrek;
//AudioPlayer donkey;
//AudioPlayer broken;
//AudioPlayer die;
//Minim minim;

//Testing Andre code editing

String mapString = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" +
                   "X                                                    X" +
                   "X                                                    X" +
                   "X                                                    X" +
                   "X                                                    X" +
                   "X                                                    X" +
                   "X                                                    X" +
                   "X                                                    X" +
                   "X                                                    X" +
                   "X                                                    X" +
                   "X                                                    X" +
                   "X                         XXXX                       X" +
                   "X                         X  X                       X" +
                   "X                         X  X                       X" +
                   "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            
int xL = 54;
int yL = 15;
char[][] map = new char[xL][yL];

int playerX = 1;
int playerY = 10;
float oldX = playerX;
float oldY = playerY;

// Used to create a smooth fall
// float gravityX = playerX;
float gravityY = playerY;
            
// Used to limit Shrek's mad vertical
int jump = 0;
            
void setup(){
  size(800, 500);
  makeMapArray();
  //minim = new Minim(this);
  //music = minim.loadFile("background2.mp3", 2048);
  //shrek = minim.loadFile("shrek.mp3", 2048);
  //music.loop();
}

void draw(){
  oldX = (oldX * 9 + playerX) / 10;
  oldY = (oldY * 9 + playerY) / 10;
  background(255);
  scale(15, 15);
  translate(0, 17);
  drawMap();
  skrek();
  gravityY = gravityY + 0.5; 
}

void drawMap() {
  
  for (int y = 0; y < yL; y++)
    for (int x = 0; x < xL; x++)
      if (map[x][y] == 'X')
        rect(x, y, 1, 2);
}

void makeMapArray() {
  int i = 0;
  
  for (int y = 0; y < yL; y++)
    for (int x = 0; x < xL; x++)
      map[x][y] = mapString.charAt(i++);
}

void skrek(){
  ellipse(oldX, oldY, .5, .5);
  
}

void keyPressed(){
  
  // LEFT RIGHT
 if(keyCode == LEFT){
   
   // Causes the player to fall if they move off a platform
   if(map[playerX][playerY + 1] != 'X'){
      playerY = playerY + 1;
      //jump = 0;
   }
   
   if(map[playerX - 1][playerY] != 'X'){
     playerX -= 1;
   }
 }
 if(keyCode == RIGHT){
   
   if(map[playerX][playerY + 1] != 'X'){
      playerY = playerY + 1;
      //jump = 0;
   }
   
   if(map[playerX + 1][playerY] != 'X'){
     playerX = playerX + 1;
   }
 }
 
//// Makes the player fall if they're not jumping or there is no platform 
//while (map[playerX][playerY + 1] != 'X' && keyCode != UP ) {
//  playerY = playerY + 1;
//}

// UP DOWN
 if(keyCode == UP){
   
   if(map[playerX][playerY - 1] != 'X' && jump < 6){
      playerY -= 1;
      jump += 1;
      println(jump);
   }
 }
 
 //if(keyCode == DOWN){
 //  if(map[playerX][playerY + 1] != 'X'){
 //     playerY = playerY + 1;
 //  }
 //}
 
 //if(key == 'm'){
 //  shrek.play();
 //}
 println(playerX, playerY);
 println(oldX, oldY);
}

void keyReleased () {
  
  if(keyCode == UP || keyCode == LEFT || keyCode == RIGHT) {
   while(map[playerX][playerY + 1] != 'X'){   
      playerY = playerY + 1;
      jump = 0;
   }  
 }
}
  

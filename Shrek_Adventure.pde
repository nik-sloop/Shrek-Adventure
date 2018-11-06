
////GRAVITY?

//// Created by Luke Meads, Andre Kerlin, Joston Chan, Nik Sloop, Zac Stephan, Will Webb
//// this version has basic gravity

////import ddf.minim.*;
////AudioPlayer music;
////AudioPlayer shrek;
////AudioPlayer donkey;
////AudioPlayer broken;
////AudioPlayer die;
////Minim minim;

////Testing Andre code editing

<<<<<<< HEAD:Shrek_Adventure.pde
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
<<<<<<< HEAD:Shrek_Adventure.pde
                   "X                         XXXXX                      X" +
                   "X                         XXXXX                      X" +
                   "X                         XXXXX                      X" +
                   "XXXXXXXXHHHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" +
                   "XXXXXXXXHHHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
=======
                   "X                         XXXX                       X" +
                   "X                         XXXX                       X" +
                   "X                         XXXX                       X" +
                   "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
>>>>>>> master:Shrek_Adventure/Shrek_Adventure.pde
            
int xL = 54;
int yL = 16;
char[][] map = new char[xL][yL];
=======
//String mapString = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" +
//                   "X                                                    X" +
//                   "X                                                    X" +
//                   "X                                                    X" +
//                   "X                                                    X" +
//                   "X                                                    X" +
//                   "X                                                    X" +
//                   "X                                                    X" +
//                   "X                                                    X" +
//                   "X                                                    X" +
//                   "X                                                    X" +
//                   "X                         XXXX                       X" +
//                   "X                         XXXX        XX             X" +
//                   "X                         XXXX        XX             X" +
//                   "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            
//int xL = 54;
//int yL = 15;
//char[][] map = new char[xL][yL];
>>>>>>> master:Shrek_Adventure/Shrek_Adventure.pde

//int playerX = 1;
//int playerY = 10;
//float oldX = playerX;
//float oldY = playerY;

//// Used to create a smooth fall
//// float gravityX = playerX;
//float gravityY = playerY;
            
//// Used to limit Shrek's mad vertical
//boolean jump = false;
            
<<<<<<< HEAD:Shrek_Adventure.pde
void setup(){
  size(800, 500);
  makeMapArray();
  gravity();
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
  shrek(); 
}
=======
//void setup(){
//  size(800, 500);
//  makeMapArray();
//  //minim = new Minim(this);
//  //music = minim.loadFile("background2.mp3", 2048);
//  //shrek = minim.loadFile("shrek.mp3", 2048);
//  //music.loop();
//}

//void draw(){
//  oldX = (oldX * 9 + playerX) / 10;
//  oldY = (oldY * 9 + playerY) / 10;
//  background(255);
//  scale(15, 15);
//  translate(0, 17);
//  drawMap();
//  shrek();
//  //gravity(); 
//}
>>>>>>> master:Shrek_Adventure/Shrek_Adventure.pde

//void drawMap() {
  
<<<<<<< HEAD:Shrek_Adventure.pde
  for (int y = 0; y < yL; y++)
    for (int x = 0; x < xL; x++)
      if (map[x][y] == 'X')
        rect(x, y, .1, .1);
}
=======
//  for (int y = 0; y < yL; y++)
//    for (int x = 0; x < xL; x++)
//      if (map[x][y] == 'X')
//        rect(x, y, 1, 2);
//}
>>>>>>> master:Shrek_Adventure/Shrek_Adventure.pde

//void makeMapArray() {
//  int i = 0;
  
//  for (int y = 0; y < yL; y++)
//    for (int x = 0; x < xL; x++)
//      map[x][y] = mapString.charAt(i++);
//}

//void shrek() {    // draws ellipse that shows player's current location
//  ellipse(oldX, oldY, .5, .5);
  
<<<<<<< HEAD:Shrek_Adventure.pde
}
<<<<<<< HEAD:Shrek_Adventure.pde
void gravity(){
  while((map[playerX][playerY + 1] != 'X') && (playerY < 15)){
=======
void gravity() {
  while(map[playerX][playerY + 1] != 'X') {
>>>>>>> master:Shrek_Adventure/Shrek_Adventure.pde
    playerY += 1;
  }
=======
//}
//void gravity() {
//  while(map[playerX][playerY + 1] != 'X') {
//    playerY += 1;
//  }
>>>>>>> master:Shrek_Adventure/Shrek_Adventure.pde
 
//}
//void jump(){
//  playerY -= 6;
//}

<<<<<<< HEAD:Shrek_Adventure.pde
void keyPressed(){
 if(map[playerX][playerY] == 'H'){
   playerX = 2;
 }
  // LEFT RIGHT
 if(keyCode == UP && map[playerX][playerY - 1] != 'X' && jump == false){
    jump();
    jump = true;
    println(jump);  
 }
 if(keyCode == LEFT && map[playerX - 1][playerY] != 'X'){   
     playerX -= 1;
     gravity();
     jump = false;
 }
 if(keyCode == RIGHT && (map[playerX + 1][playerY] != 'X')){   
    playerX += 1;
    gravity();
    jump = false;
 }
=======
//void keyPressed(){
  
//  // LEFT RIGHT
// if(keyCode == UP && map[playerX][playerY - 1] != 'X' && jump == false){
//    jump();
//    jump = true;
//    println(jump);  
// }
// if(keyCode == LEFT && map[playerX - 1][playerY] != 'X'){   
//     playerX -= 1;
//     gravity();
//     jump = false;
// }
// if(keyCode == RIGHT && (map[playerX + 1][playerY] != 'X')){   
//    playerX += 1;
//    gravity();
//    jump = false;
// }
>>>>>>> master:Shrek_Adventure/Shrek_Adventure.pde
 
 
// //if(keyCode == DOWN){
// //  if(map[playerX][playerY + 1] != 'X'){
// //     playerY = playerY + 1;
// //  }
// //}
 
<<<<<<< HEAD:Shrek_Adventure.pde
 //if(key == 'm'){
 //  shrek.play();
 //}
 println(playerX, playerY);
 //println(oldX, oldY);
}
=======
// //if(key == 'm'){
// //  shrek.play();
// //}
// println(playerX, playerY);
// println(oldX, oldY);
//}
>>>>>>> master:Shrek_Adventure/Shrek_Adventure.pde

//void keyReleased () {
  
//  if(keyCode == UP || keyCode == LEFT || keyCode == RIGHT) {
//   while(map[playerX][playerY + 1] != 'X'){   
//      playerY = playerY + 1;
//      jump = false;
//   }  
// }
//}

float px = 25;  // object position
float py = 200;  // object position
float vx = 0;  // current velocity
float vy = 0;  // current velocity
float ax = 0;  // object acceleration
float ay = 0;  // object acceleration
 
boolean[] keys = { false, false };
 
void setup() {
  size(1200, 600);
}
 
void draw() {
  simulate();
  render();
}
 
void simulate() {
  ax = 0;
  ax += keys[0]?-.1:0;
  ax += keys[1]?.1:0;
  ay = .32;
  vx += ax;
  vy += ay;
  px += vx;
  py += vy;
  if (px < 10) {
    vx = 0;
    ax = 0;
    px = 10;
  }
  if (px > 1190) {
    vx = 0;
    ax = 0;
    px = 390;    // player boundary, if position hits 390 drops straight down instead of going outside screen
  }
 
  if (py > 575 && px > 50 && px < 750) { 
    py=575; 
    vy=0; 
    ay=0;
  }
  if (py > 700) {
    px = 75;
    py = -100;
    ax = 0;
    vx = 0;
    vy = 10;
  }
}
 
void render() {
  background(100);
  strokeWeight(3);
  stroke(0);
  //line(100, 300, 300, 300);
  line(50, 575, 750, 575);
  noStroke();
  fill(0, 255, 0);
  rect(px - 10, py - 20, 20, 20);
}
 
void keyPressed(){
  if (keyCode == LEFT) {
    keys[0] = true;
  }
  if (keyCode == RIGHT) {
    keys[1] = true;
  }
  if (keyCode == UP) {
    vy = -10;
  }
}
 
void keyReleased(){
  if (keyCode == LEFT) {
    keys[0] = false;
  }
  if (keyCode == RIGHT) {
    keys[1] = false;
  }
  //if (keyCode == UP) {
  //  vy = 0;
  //}
}
  

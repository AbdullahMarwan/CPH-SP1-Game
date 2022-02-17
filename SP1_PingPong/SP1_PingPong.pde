//Abdullah Marwan CPH Datamatiker
//Ping Pong Game

PImage background; //Background image

int currentScreen = 0; //Int used to change screens

//Creates two instances of Paddle for each player
Paddle paddleA;
Paddle paddleB;

void setup() {
  fullScreen(); //Sets program to fill the whole screen
  frameRate(60);

  //Variables regarding Paddle Size, color and position (needs to be init in setup AFTER the initial FullScreen() because of Width and Height issues)
  color paddleColor = color(255, 255, 255);
  int paddleWidth = width/30;
  int paddleHeight = height/3;
  int paddleXPosA = width/20;
  int paddleXPosB = (width/30)*(width/50);
  int PaddleYPos = height/2;


  //Loads the background image and resizes it to fit the full screen
  background = loadImage("PongBackground.png");
  background.resize(width, height);

  //Creates two instances of Paddle for each player
  paddleA = new Paddle(paddleXPosA, PaddleYPos, paddleWidth, paddleHeight, paddleColor);
  paddleB = new Paddle(paddleXPosB, PaddleYPos, paddleWidth, paddleHeight, paddleColor);
}


void draw() {

  //Switch case to switch from the different screens
  switch (currentScreen) {
  case 0: //Start Screen
    ScreenStart();
    break;

  case 1: //Game Screen
    ScreenGame();
    break;

  case 2: //Finish Screen
    ScreenFinish();
    break;
  }
}

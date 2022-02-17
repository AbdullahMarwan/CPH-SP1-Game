//Abdullah Marwan CPH Datamatiker
//Ping Pong Game

PImage background; //Background image

int currentScreen = 0; //Int used to change screens

void setup() {
  fullScreen(); //Sets program to fill the whole screen
  frameRate(60);

  //Loads the background image and resizes it to fit the full screen
  background = loadImage("PongBackground.png");
  background.resize(width, height);
  
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

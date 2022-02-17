class Paddle {
  float pXPos;
  float pYPos;
  int pWidth;
  int pHeight;
  color c;
  int playerScore = 0;

  Paddle(int tempXPos, int tempYPos, int tempWidth, int tempHeight, color tempC) {
    pXPos = tempXPos;
    pYPos = tempYPos;
    pWidth = tempWidth;
    pHeight = tempHeight;
    c = tempC;
  }

  void displayA() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    //rect(pXPos, pYPos, pWidth, pHeight);
    rect(pXPos, pYPos, pWidth, pHeight);
    pYPos = paddleAPos.y;
    paddleAPos.add(paddleAVel);
    paddleAPos.y = constrain(paddleAPos.y, 0, height);
  }
  
    void displayB() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    //rect(pXPos, pYPos, pWidth, pHeight);
    rect(pXPos, pYPos, pWidth, pHeight);
    paddleBPos.add(paddleBVel);
    paddleBPos.y = constrain(paddleBPos.y, 0, height);
  }

}

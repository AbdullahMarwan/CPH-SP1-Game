class Paddle {
  int pXPos;
  int pYPos;
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

  void display() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(pXPos, pYPos, pWidth, pHeight);
  }

}

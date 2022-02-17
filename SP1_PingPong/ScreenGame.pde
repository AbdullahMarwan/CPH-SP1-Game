void ScreenGame() {
  background(background);

  paddleA.display();
  paddleB.display();


  paddleA.playerScore = 1;
  println("playerScore: " + paddleA.playerScore);
}


void keyPressed() {
  //if (keyPressed == 'W') {}
}

void ScreenGame() {
  background(background);

  paddleA.displayA();
  paddleB.displayB();


  //paddleA.playerScore = 1;
  //println("playerScore: " + paddleA.playerScore);
}



void keyPressed() {
  final int k = keyCode;

  if      (k == 'W') paddleAVel.y = -paddleSpeed;
  else if (k == 'S') paddleAVel.y =  paddleSpeed;
  else if (k == UP) paddleBVel.y =  -paddleSpeed;
  else if (k == DOWN) paddleBVel.y =  paddleSpeed;
}

void keyReleased() {
  final int k = keyCode;
  if (k == 'W' && paddleAVel.y < 0
    || k == 'S' && paddleAVel.y > 0)
    paddleAVel.y = 0;

  else if ( k == UP && paddleBVel.y < 0
    || k == DOWN && paddleBVel.y > 0)
    paddleBVel.y = 0;
}

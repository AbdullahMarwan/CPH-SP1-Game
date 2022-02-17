void ScreenStart() {
  background(background);
  
  //White rectangle button
  rectMode(CENTER);
  fill(255, 255, 255);
  rect(width/2, height-100, 600, 120);
  
  //Text
  textSize(70);
  fill(55);
  textAlign(CENTER, CENTER);
  text("Press To Continue", width/2, height-100);
  
  //Checks if the mouse has been pressed inside the button and then changes to Game Screen
  if (mouseX >= width/2-300 && mouseX <= width/2+300 && mouseY >= height-160 && mouseY <= height-40) {
    if (mousePressed) {
      currentScreen = 1;
    }
  }
}

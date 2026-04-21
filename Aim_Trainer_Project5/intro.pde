void intro() {
  //sounds
  gameover.pause();
  theme.play();

  background(0, 255, 255);
  //Title
  textSize(75);
  text("Clicker Game", width/2, height/2-height/4);
  //Start button
  fill(255);
  stroke(0);
  strokeWeight(5);
  rect((width/2)-100, height/2+height/4, 200, 100);
  fill(0);
  textSize(50);
  text("start", (width/2)-100, height/2+height/4);
  //options button
  fill(255);
  rect((width/2)+120, height/2+height/4, 200, 100);
  fill(0);
  textSize(50);
  text("options", (width/2)+120, height/2+height/4);
}
void introClicks() {
  // start button
  if (mouseX > width/2 - 200 && mouseX < width/2 && mouseY > height/2 + height/4 - 50 && mouseY < height/2 + height/4 + 50) {
    mode = GAME;
  }
  // options button
  if (mouseX > width/2 + 20 && mouseX < width/2 + 220 && mouseY > height/2 + height/4 - 50 && mouseY < height/2 + height/4 + 50) {
    mode = OPTIONS;
  }
}

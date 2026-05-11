void gameover() {
gameover.play();
  background(255, 0, 0);
  textSize(100);
  fill(0);
  text("GAMEOVER :c", width/2, height/2);
}
void gameoverClicks() {
  resetVariables();
  mode = INTRO;
  theme.rewind();
}

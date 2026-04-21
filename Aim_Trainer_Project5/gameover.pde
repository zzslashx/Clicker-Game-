void gameover() {

  background(255, 0, 0);
  resetVariables();
  textSize(100);
  fill(0);
  text("GAMEOVER :c", width/2, height/2);
}
void gameoverClicks() {
  resetVariables();
  mode = INTRO;
  theme.rewind();
}

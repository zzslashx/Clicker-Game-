void gameover() {

  background(255, 0, 0);
  theme.pause();
  gameover.play();
   bull=0;
  mid=0;
  out=0;
  lives=3;
  textSize(100);
  fill(0);
  text("GAMEOVER :c", width/2, height/2);
}
void gameoverClicks() {
  mode = INTRO;
  theme.rewind();
}

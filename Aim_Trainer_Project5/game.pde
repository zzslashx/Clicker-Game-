void game() {

  //visuals
  background(0, 120, 0);
  //pause button
  stroke(0);
  fill(255);
  circle(width-100, 100, 90);
  //2 lines signalling its pause button
  if (mode==GAME) {
    strokeWeight(8);
    line(width-110, 90, width-110, 110);
    line(width-85, 90, width-85, 110);
  }
  if (mode==PAUSE) {
    fill(0);
    triangle(width-115, 70, width-115, 130, width-70, 100);
  }

  //score + lives
  textSize(25);
  text("BUllSEYE: " + bull, 100, 100);
  text("Inner Rings: " + mid, 100, 100);
   text("Outer Rings: " + out, 100, 100);
  text("Lives: " + lives, 100, 150);

  displayTarget1();
  displayTarget2();
  displayTarget3();
}
void gameClicks() {
  boolean hit = false;

  // target 1
  if (dist(mouseX, mouseY, x, y) < d/8) {
    bull += 3;
    popupValue = 3;
    hit = true;
    x = random(d/2, width-d/2);
    y = random(d/2, height-d/2);
  } else if (dist(mouseX, mouseY, x, y) < d/4) {
    mid += 2;
    popupValue = 2;
    hit = true;
    x = random(d/2, width-d/2);
    y = random(d/2, height-d/2);
  } else if (dist(mouseX, mouseY, x, y) < d/2) {
    out += 1;
    popupValue = 1;
    hit = true;
    x = random(d/2, width-d/2);
    y = random(d/2, height-d/2);
  }

  // target 2
  if (dist(mouseX, mouseY, x1, y1) < d1/8) {
    bull += 3;
    popupValue = 3;
    hit = true;
    x1 = random(d/2, width-d/2);
    y1 = random(d/2, height-d/2);
  } else if (dist(mouseX, mouseY, x1, y1) < d1/4) {
    mid += 2;
    popupValue = 2;
    hit = true;
    x1 = random(d/2, width-d/2);
    y1 = random(d/2, height-d/2);
  } else if (dist(mouseX, mouseY, x1, y1) < d1/2) {
    out += 1;
    popupValue = 1;
    hit = true;
    x1 = random(d/2, width-d/2);
    y1 = random(d/2, height-d/2);
  }

  // target 3
  if (dist(mouseX, mouseY, x2, y2) < d2/8) {
    bull += 3;
    popupValue = 3;
    hit = true;
    x2 = random(d/2, width-d/2);
    y2 = random(d/2, height-d/2);
  } else if (dist(mouseX, mouseY, x2, y2) < d2/4) {
    mid += 2;
    popupValue = 2;
    hit = true;
    x2 = random(d/2, width-d/2);
    y2 = random(d/2, height-d/2);
  } else if (dist(mouseX, mouseY, x2, y2) < d2/2) {
    out += 1;
    popupValue = 1;
    hit = true;
    x2 = random(d/2, width-d/2);
    y2 = random(d/2, height-d/2);
  }

  // shared popup and sound for any hit
  if (hit) {
    popupX = mouseX;
    popupY = mouseY;
    popupTimer = 50;
    coin.rewind();
    coin.play();
  } else if (dist(width-100, 100, mouseX, mouseY) < 45) {
    mode = PAUSE;
  } else {
    lives--;
    bump.rewind();
    bump.play();
  }

  if (lives == 0) mode = GAMEOVER;
}

void drawGradientRect(float cx, float cy, float w, float h, color c1, color c2) {
  noStroke();
  float x = cx - w / 2.0;  //math !! to make center top left
  float y = cy - h / 2.0;
  for (int i = 0; i < h; i++) {
    float t = map(i, 0, h, 0, 1);
    color c = lerpColor(c1, c2, t);
    stroke(c);
    line(x, y + i, x + w, y + i);
  }
}


void displayTarget1() {
  //draws the target to press

  // outermost ring
  stroke(0);
  strokeWeight(3);
  fill(255, 255, 255);
  circle(x, y, d);
  noStroke();
  // second ring
  fill(255, 0, 0);
  circle(x, y, d * 0.75);
  // third ring
  fill(255, 255, 255);
  circle(x, y, d * 0.5);
  // bullseye
  fill(255, 0, 0);
  circle(x, y, d * 0.25);
}
void displayTarget2() {
  //draws the target to press

  // outermost ring
  stroke(0);
  strokeWeight(3);
  fill(255, 255, 255);
  circle(x1, y1, d1);
  noStroke();
  // second ring
  fill(255, 0, 0);
  circle(x1, y1, d1 * 0.75);
  // third ring
  fill(255, 255, 255);
  circle(x1, y1, d1 * 0.5);
  // bullseye
  fill(255, 0, 0);
  circle(x1, y1, d1 * 0.25);
}
void displayTarget3() {
  //draws the target to press
  // outermost ring
  stroke(0);
  strokeWeight(3);
  fill(255, 255, 255);
  circle(x2, y2, d2);
  noStroke();
  // second ring
  fill(255, 0, 0);
  circle(x2, y2, d2 * 0.75);
  // third ring
  fill(255, 255, 255);
  circle(x2, y2, d2 * 0.5);
  // bullseye
  fill(255, 0, 0);
  circle(x2, y2, d2 * 0.25);
}
void drawPopup() {
  if (popupTimer > 0) {
    textSize(55);
    textAlign(CENTER, CENTER);
    fill(255, 255, 255, popupTimer * 3); // fades out
    text("+" + (int)popupValue, popupX, popupY - (50 - popupTimer)); // floats up
    popupTimer--;
  }
}

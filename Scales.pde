void setup() {
  size(480,480);
  background(0);
  noLoop(); 
}
void draw() {
  //scale(250, 250);
  for (int y = 16; y < 500; y+=32) {
    for (int x = 16; x < 480; x+=32) {
      scale(x, y);
    }
  }
}

void scale(int x, int y) {
  fill(65, 114, 159);
  ellipse(x, y, 34, 50);
  fill(39, 68, 114);
  triangle(x, y-18, x-14, y+6, x+14, y+6);
  fill(88, 133, 175);
  ellipse(x, y+6, 30, 6);
  arc(x, y+8, 20, 20, 0, PI);
}

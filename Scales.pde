void setup() {
  size(480,480);
  background(0);
  noLoop();
}
void draw() {
  for (int y = 16; y < 500; y+=36) {
    for (int x = 16; x < 480; x+=32) {
      scale(x, y);
    }
  }
}

void scale(int x, int y) {
  fill(65, 114, 159);
  ellipse(x, y, 34, 50);
  int r = 39 + (int)(Math.random()*50);
  int g = 68 + (int)(Math.random()*50);
  int b = 114 + (int)(Math.random()*50);
  fill(r, g, b);
  triangle(x, y-18, x-14, y+6, x+14, y+6); //spike
  fill(88, 133, 175);
  ellipse(x, y+6, 30, 6);
  arc(x, y+8, 20, 20, 0, PI);
  
  int dm = 0;
  float r2 = 0;
  float g2 = 114;
  float b2 = 159;
  noFill();
  while (dm < 8){
    stroke(r,g,b);
    ellipse(x,y+8,dm,dm);
    dm++;
    r-=65/8.0;
    g-=114/8.0;
    b-=159/8.0;
  }
}

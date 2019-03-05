void setup() {
  size(510, 510);
}
int r = 0, g = 0, b = 0, c = 40;
void keyPressed() {
  if(key == '0') {
    r = 0;
    g = 0;
    b = 0;
    println("r = " + r);
    println("g = " + g);
    println("b = " + b);
  }
  if(key == 'x') {
    println("r = " + r);
    println("g = " + g);
    println("b = " + b);
  }
  if(key == '2' && r <= 6) {
    r = r + 1;
    println("r = " + r);
  }
  if(key == '1' && r >= 1) {
    r = r - 1;
    println("r = " + r);
  }
  if(key == '4' && g <= 6) {
    g = g + 1;
    println("g = " + g);
  }
  if(key == '3' && g >= 1) {
    g = g - 1;
    println("g = " + g);
  }
  if(key == '6' && b <= 6) {
    b = b + 1;
    println("b = " + b);
  }
  if(key == '5' && b >= 1) {
    b = b - 1;
    println("b = " + b);
  }
  if(key == 'w' && c >= 10) {
    c = c - 5;
  }
  if(key == 'e' && c <= 95) {
    c = c + 5;
  }
  if(key == 'r') {
    r = int(random(8));
    g = int(random(8));
    b = int(random(8));
    println("r = " + r);
    println("g = " + g);
    println("b = " + b);  
  }
}
void draw() {
  if(mousePressed == true) {
    background(255);
  }
  int m = 0, n = 0, o = 0;
  int x = mouseX;
  int y = mouseY;
  if(r == 1) {
    m = mouseX/2;
  }
  if(r == 2) {
    m = mouseY/2;
  }
  if(r == 3) {
    m = abs(mouseX-mouseY);
  }
  if(r == 4) {
    m = 128;
  }
  if(r == 5) {
    m = 255;
  }
  if(r == 6) {
    m = mouseY-mouseX;
  }
  if(r == 7) {
    m = mouseX-mouseY;
  }
  if(g == 1) {
    n = mouseX/2;
  }
  if(g == 2) {
    n = mouseY/2;
  }
  if(g == 3) {
    n = abs(mouseX-mouseY);
  }
  if(g == 4) {
    n = 128;
  }
  if(g == 5) {
    n = 255;
  }
  if(g == 6) {
    n = mouseY-mouseX;
  }
  if(g == 7) {
    n = mouseX-mouseY;
  }
  if(b == 1) {
    o = mouseX/2;
  }
  if(b == 2) {
    o = mouseY/2;
  }
  if(b == 3) {
    o = abs(mouseX-mouseY);
  }
  if(b == 4) {
    o = 128;
  }
  if(b == 5) {
    o = 255;
  }
  if(b == 6) {
    o = mouseY-mouseX;
  }
  if(b == 7) {
    o = mouseX-mouseY;
  }
  stroke(m, n, o);
  fill(m, n, o); 
  rect(x, y, c, c);
}
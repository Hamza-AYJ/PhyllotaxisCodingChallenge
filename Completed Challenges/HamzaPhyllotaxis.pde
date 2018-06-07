float n = 0;        // size of the phyotaxis
float c = 3;        // spacing in between circles
float hue = 0;      // rate of how much the colour changes 

void setup() {
  size (400, 400);
  colorMode (HSB, 360, 255, 255);
}
void draw() {
  background (0);
  translate (width / 2, height / 2);
  rotate (n * 0.3);


  for (int i = 0; i < n; i++) {

    float a = i * radians (137.5);
    float r = c * sqrt (i);
    float x = r * sin (a);
    float y = r * tan (a);

    float hu = i + hue;
    hu = i/2.0 % 260;
    fill (hu, 255, 255);
    noStroke();
    ellipse(x, y, 10, 10);
  }
  n += 5;
  hue += 5;
}

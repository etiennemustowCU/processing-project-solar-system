int length;
int width;
int x;
int y;
Planet mercury;
Planet venus;
Planet earth;
Planet mars;
Planet jupiter;
Planet saturn;
Planet uranus;
Planet neptune;
Planet[] planets = {mars, venus, earth};
int numberOfStars = 400;
ArrayList<Star> stars = new ArrayList<Star>();

void setup()
{
  length = 1200;
  width = 1200;
  x = width/2;
  y = length/2 - 200;
  size(1200, 1200, P3D);
  //  planet = new Planet(int r, int g, int b, int sizeX, int sizeY, int distance, float time, int radius, float orbitalAngle, boolean hasRing);
  mercury = new Planet(235, 230, 211, 3, 3, 80, 1.5, 2, 1, false);
  venus = new Planet(250, 228, 167, 10, 10, 100, 1.1, 7, 1, false);
  earth = new Planet(10, 39, 168, 12, 12, 140, 1, 8, 1, false);
  mars = new Planet(219, 89, 37, 6, 6, 160, 0.9, 4, 1, false);
  jupiter = new Planet(245, 205, 188, 50, 50, 220, 0.5, 20, 1, false);
  saturn = new Planet(222, 227, 182, 30, 30, 300, 0.25, 17, 1, true);
  uranus = new Planet(222, 255, 251, 15, 15, 360, 0.125, 12, 1, false);
  neptune = new Planet(31, 123, 209, 17, 17, 420, 0.1, 11, 1, false); 
  drawStars();
}

void draw() {
  background(0);
  lights();
  drawSun();
  showStars();
  mercury.draw();
  venus.draw();
  earth.draw();
  mars.draw();
  jupiter.draw();
  saturn.draw();
  uranus.draw();
  neptune.draw();
}

void drawSun() {
  noStroke();
  fill(255, 255, 0);
  translate(x, y-20);
  sphere(50);
}

void drawStars(){
  for (int i=0; i<numberOfStars; i++){
    Star star = new Star(random(-600, 600), random(-380, 600));
    stars.add(star);
  }
}

void showStars(){
  for (int i=0; i<stars.size(); i++){
    Star star = stars.get(i);
    star.draw();
  }
}

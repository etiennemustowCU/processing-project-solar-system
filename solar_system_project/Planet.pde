public class Planet {
  int red; 
  int green; 
  int blue;
  int sizeX;
  int sizeY;
  int x;
  int y;
  int distance; 
  float time;
  int radius;
  float orbitalAngle;
  boolean hasRing;

  public Planet(int r, int g, int b, int sizeX, int sizeY, int distance, float time, int radius, float orbitalAngle, boolean hasRing) {
    red = r;
    green = g;
    blue = b;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.distance = distance;
    this.time = time;
    this.radius = radius;
    this.orbitalAngle = orbitalAngle;
    this.hasRing = hasRing;
  }

  public void rings() {
    pushMatrix();
    noFill();
    stroke(207, 203, 163);
    strokeWeight(3);
    rotateZ(radians(20));
    translate(0, 0);
    ellipse(0, 0, 40, 100);
    popMatrix();
  }

  public void setRing() {
    if (hasRing == true) {
      rings();
    }
  }
  public void draw() {
    pushMatrix();
    rotateX(orbitalAngle);
    float t = millis()*time/1000.0f;
    x = (int)(distance*cos(t));
    y = (int)(distance*sin(t));
    noStroke();
    fill(red, green, blue);
    translate(x, y, 0);
    sphere(radius);
    setRing();
    popMatrix();
  }
}

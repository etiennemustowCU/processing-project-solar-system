public class Star{
  float posX;
  float posY;
  
  public Star(float posX, float posY){
    this.posX = posX;
    this.posY = posY;
  }
  
  public void draw(){
    fill(255, 255, 255);
    ellipse(posX, posY, 1, 1);
  }
}

public class Star //note that this class does NOT extend Floater
{
  int myX, myY, myColor;
  Star()
  {
    myX = (int)(Math.random()*700);
    myY = (int)(Math.random()*700);
    myColor = color(255);
  }
  public void show() {
    stroke(myColor);
    fill(myColor);
    ellipse(myX, myY, 3,3);
  }
}

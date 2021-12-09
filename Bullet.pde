class Bullet extends Floater {
  protected int myColor;
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getX();
    myYspeed = theShip.getY();
    myPointDirection = jake.getDirection();
    myColor = color(255,0,0);
    float dRadians = (float)(myPointDirection * (Math.PI / 180));
    myDirectionX = 5 * Math.cos(dRadians) + jake.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + jake.getDirectionY();
  }
  
  public void show() {
    strokeWeight(1);
    translate((float)myCenterX, (float)myCenterY);
    float dRadians = (float)(myPointDirection * (Math.PI/180));
    rotate(dRadians);
    fill(255, 0, 0);
    strokeWeight(2);
    stroke(255,0,0);
    ellipse(0,0,3,3);
    rotate(-1 * dRadians);
    stroke(255);
    translate(-1 * (float)myCenterX, -1 * (float)myCenterY);
    fill(255, 0, 0);
  }
  public void move()
    {   
      myCenterX += myDirectionX;
      myCenterY += myDirectionY;
    }
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  public double getDirection(){return myPointDirection;}
  public double getXspeed(){return myXspeed;}
  public double getYspeed(){return myYspeed;}
}
 

public class Asteroids extends Floater
{
  private double rotSpeed, mySize;
  private int myColor;
  public Asteroids(){
    corners = 5;
    xCorners = new int[]{-11,7,13,6,(int)(Math.random()*22)-22};
    yCorners = new int[]{-8,-8,0,(int)(Math.random()*10),8};
    myColor = color(255);
    myCenterX = (float)(Math.random()*800);
    myCenterY = (float)(Math.random()*800);
    myXspeed = 1;
    myYspeed = 1;
    myPointDirection = 0; 
    rotSpeed = 1;
    mySize = 20;
    myColor = color(178,178,178);
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public double getDirection(){
    return myPointDirection;
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
   public void show ()  //Draws the floater at the current position  
  {             
    fill(0);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
}

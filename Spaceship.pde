public class Spaceship extends Floater  
{   
    public Spaceship(){
     
      corners = 4;
      xCorners = new int[]{-8,16,-8,-2};
      yCorners = new int[] {-8,0,8,0};
      myColor = color(255);
      myCenterX= myCenterY = 250; 
      myXspeed= 0;
      myYspeed = 0;
      myPointDirection = 0;
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
 public void hyperspace()
 {
   myCenterX = (Math.random()*700);
   myCenterY = (Math.random()*700);
   myXspeed= 0;
   myYspeed = 0;
   myPointDirection = Math.random()*200;
 }
}

public class Spaceship extends Floater  
{   
    private boolean moving, turningLeft, turningRight;
    private int teleport, myColor;
    public Spaceship(){
     
      corners = 4;
      xCorners = new int[]{-8,16,-8,-2};
      yCorners = new int[] {-8,0,8,0};
      myColor = color(255);
      myCenterX= myCenterY = 250; 
      myXspeed= 0;
      myYspeed = 0;
      myPointDirection = myCenterX;
      moving = false;
      myColor = color(220,220,220);
    }
      
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  public double getDirection(){return myPointDirection;}
  public double getDirectionX(){return myDirectionX;}
  public double getDirectionY(){return myDirectionY;}
  public double getXspeed(){return myXspeed;}
  public double getYspeed(){return myYspeed;}
 public void hyperspace()
 {
   myCenterX = (Math.random()*700);
   myCenterY = (Math.random()*700);
   myXspeed= 0;
   myYspeed = 0;
   myPointDirection = 1;
 }
 public void show()
 {
  fill(myColor);
  stroke(myColor);
  translate((float)myCenterX, (float)myCenterY);
  float dRadians = (float)(myPointDirection*(Math.PI/180));
  rotate(dRadians);
   //draw the polygon
    beginShape();
    for (int n = 0; n < corners; n++){
      vertex(xCorners[n], yCorners[n]);
    }
    endShape(CLOSE);
    if(moving){
      strokeWeight(1);
      fill(0,0,255);
      line(-5, 0, -20, 0);
      line(-5, 3, -20, 7);
      line(-5, -3, -20, -7);
      strokeWeight(1);
      }

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  public void traveling(boolean check) {
    moving = check;
  }
  public void left(boolean check) {
    turningLeft = check;
  }
  public void right(boolean check) {
    turningRight = check;
  }
  public void stop(){
    teleport = 60;
  }
}


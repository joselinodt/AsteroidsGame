Spaceship jake = new Spaceship();
Star[] bob;

public void setup() 
{
  size(600,600);
   bob = new Star[400];
   for(int i = 0; i < bob.length; i++)
   {
     bob[i] = new Star();
   }
   frameRate(160);
}
public void draw() 
{
  background(0);
  for(int i = 0; i < bob.length; i++)
  {
    bob[i].show();
  }
  if(keyPressed){
    if(key == 'a' || key =='A'){
      jake.turn(-3);
    }
    if(key == 'd' || key == 'D'){
      jake.turn(3);
    }
    if(key == 'w' || key == 'W'){
      jake.accelerate(.02);
    }
    if(key == 's' || key == 'S')
      jake.accelerate(-.02);
  }
    
  jake.move();
  jake.show();
  
}
public void mousePressed(){
  if(mousePressed && mouseButton == RIGHT)
  jake.hyperspace();
}


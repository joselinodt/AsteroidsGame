Spaceship jake = new Spaceship();
Star[] bob;
ArrayList <Asteroids> rock;
ArrayList <Bullet> shot = new ArrayList <Bullet>();
public int score = 0;
public int health = 100;
public int ammo = 300;
public void setup() 
{
  size(800, 800);
  bob = new Star[500];
  for (int i = 0; i < bob.length; i++)
  {
    bob[i] = new Star();
  }
  rock = new ArrayList <Asteroids>();
  for (int i = 0; i < 55; i++)
  {
    rock.add(new Asteroids());
  }
}
public void draw() 
{
  background(0);
  frameRate(80);
  for (int i = 0; i < rock.size(); i++)
  {
    rock.get(i).move();
    rock.get(i).show();
    float d = dist((float)jake.getX()+2, (float)jake.getY()+2, (float)rock.get(i).getX(), (float)rock.get(i).getY());
    if (d < 19) {
      rock.remove(i);
      health-=10;
    }
    for (int k = 0; k < rock.size(); k++)
      for (int l = 0; l < shot.size(); l++)
      {
        if (dist((float)rock.get(k).getX(), (float)rock.get(k).getY(), (float)shot.get(l).getX(), (float)shot.get(l).getY()) < 19)
        {
          rock.remove(k);
          shot.remove(l);
          score+=5;
          break;
        }
      }

    if (health == 0)
    {
      noLoop();
      textAlign(CENTER);
      textSize(50);
      fill(255);
      text("YOU LOST", 400, 400);  
      textSize(15);
      text("Refresh to play again :)", 400, 450);
    }
    if (ammo == 0)
    {
      noLoop();
      textAlign(CENTER);
      textSize(50);
      fill(255);
      text("YOU LOST", 400, 400);  
      textSize(15);
      text("Refresh to play again :)", 400, 450);
    }
    if (rock.size() == 0)
    {
      noLoop();
      textAlign(CENTER);
      textSize(50);
      fill(255);
      text("YOU WON", 400, 400);
    }
  }
  textAlign(CENTER);
  textSize(30);
  fill(0, 255, 0);
  text("Health: " + health, 85, 30);
  text("Score: " + score, 80, 60);
  text("Ammo: " + ammo, 87, 90);

  for (int i = 0; i < bob.length; i++)
  {
    bob[i].show();
  }
  for (int i = 0; i < rock.size(); i++)
  {
    rock.get(i).show();
    rock.get(i).move();
  }
  for (int i = 0; i < shot.size(); i++)
  {
    shot.get(i).move();
  }
  for (int i = 0; i < shot.size(); i++) {
    shot.get(i).show();
  }
  if (keyPressed) {
    if (key == 'a' || key =='A') {
      jake.turn(-6);
      jake.right(true);
    } else {
      jake.right(false);
    }
    if (key == 'd' || key == 'D') {
      jake.turn(6);
      jake.left(true);
    } else {
      jake.left(false);
    }
    if (key == 'w' || key == 'W') {
      jake.accelerate(0.2);
      jake.traveling(true);
    } else {
      jake.traveling(false);
    }
    if (key == ' ')
    {
      shot.add(new Bullet(jake));
      ammo--;
    }
  }

  jake.move();
  jake.show();
}

public void mousePressed() {
  if (mousePressed && mouseButton == RIGHT)
    jake.hyperspace();
}

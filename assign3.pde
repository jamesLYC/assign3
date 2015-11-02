int m = 0;
int n = -640;
float enemyx = 0;
float enemyy = 0;
float k = random(0,599);
float s = random(0,439);
float l = 38;
float fighterx = 589;
float fightery = 240;
float speed = 5;
boolean GameState;
boolean GameOver;
boolean upPressed;
boolean downPressed;
boolean leftPressed;
boolean rightPressed;
boolean wave1;
boolean wave2;
boolean wave3;
PImage bg1;
PImage bg2;
PImage enemy;
PImage fighter;
PImage hp;
PImage treasure;
PImage start;
PImage start2;


void setup () {
  size(640, 480) ;
   bg2 = loadImage("bg2.png");
   bg1 = loadImage("bg1.png");
   enemy = loadImage("enemy.png");
   fighter = loadImage("fighter.png");
   hp = loadImage("hp.png");
   treasure = loadImage("treasure.png");
   start = loadImage("start2.png");
   start2 = loadImage("start1.png");
   GameState = false;
   wave1 = false;
   wave2 = false;
   wave3 = false;
}

void draw() {
  image(bg2,m,0);
  image(bg1,n,0);
  image(fighter,fighterx,fightery);
  fill(225,0,0);
  rect(13,5,l,15);
  image(hp,0,0);
  image(treasure,k,s);
  if(GameState == false){
    image(start,0,0);
    enemyx = 0;
  }
  m++;
  n++;
  while(m>640){
    m = -640;
  }
  while(n>640){
    n = -640;
  }
    
  if(GameState == false && mouseX > 200 && mouseX < 440 && mouseY >360&& mouseY <420){
   image(start2,0,0);
   if(mousePressed){
   GameState = true;
   wave1 = true;
   enemyy = random(0,419);
   }
  }
 
  if(wave1 == true){
  image(enemy,enemyx,enemyy);
  image(enemy,enemyx-61,enemyy);
  image(enemy,enemyx-122,enemyy);
  image(enemy,enemyx-183,enemyy);
  image(enemy,enemyx-244,enemyy);
  }
  if(wave1 == true && enemyx > 884){
  wave1 = false;
  wave2 = true;
  enemyx = 0;
  enemyy = random(0,175);
  }
  if(wave2 == true){
  image(enemy,enemyx,enemyy);
  image(enemy,enemyx-61,enemyy+61);
  image(enemy,enemyx-122,enemyy+122);
  image(enemy,enemyx-183,enemyy+183);
  image(enemy,enemyx-244,enemyy+244);
  } 
  if(wave2 == true && enemyx > 884){
  wave2 = false;
  wave3 = true;
  enemyx = 0;
  enemyy = random(122,297);
  }
   if(wave3 == true){
  image(enemy,enemyx,enemyy);
  image(enemy,enemyx-61,enemyy+61);
  image(enemy,enemyx-61,enemyy-61);
  image(enemy,enemyx-122,enemyy+122);
  image(enemy,enemyx-122,enemyy-122);
  image(enemy,enemyx-183,enemyy+61);
  image(enemy,enemyx-183,enemyy-61);
  image(enemy,enemyx-244,enemyy);
  } 
  if(wave3 == true && enemyx > 884){
  wave3 = false;
  wave1 = true;
  enemyx = 0;
  enemyy = random(0,419);
  }
  

  if(upPressed){
    fightery -= speed;;
  }
  if(downPressed){
    fightery += speed;
  }
  if(leftPressed){
    fighterx -= speed;
  }
  if(rightPressed){
    fighterx += speed;
  }
  if (fighterx > width ){
    fighterx = 0;
  }
  if (fighterx < 0){
    fighterx = width;
  }
  if (fightery > height){
    fightery = 0;
  }
  if (fightery < 0){
   fightery = height;
  }
  if(m > 640){
    m = 0;
  }

 
  if(k-fighterx<=41&&k-fighterx>=-41&&s-fightery<=41&&s-fightery>=-41){
    k = random(0,599);
    s = random(0,439);  
    l = l+19;
  }
  if(l > 190){
    l = 190;
  }
  enemyx+=4;
}
void keyPressed(){
  
  
  if (key == CODED){
    switch(keyCode){
      case UP:
        upPressed = true;
        break;
      case DOWN:
        downPressed = true;
        break;
      case LEFT:
        leftPressed = true;
        break;
      case RIGHT:
        rightPressed = true;
        break;
    }
}
}
void keyReleased(){
    if (key == CODED){
    switch(keyCode){
      case UP:
        upPressed = false;
        break;
      case DOWN:
        downPressed = false;
        break;
      case LEFT:
        leftPressed = false;
        break;
      case RIGHT:
        rightPressed = false;
        break;
      }
      }
}

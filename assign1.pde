PImage bg;
PImage soil;
PImage life;
PImage groundhog;
PImage robot;
PImage soldier;

int robotX,robotY;
int laserX,laserY;
int laserMove,laserRange;
int soldierX,soldierY;


void setup() {
  //size
  size(640, 480, P2D);

  //loadImage
  bg=loadImage("img/bg.jpg");
  soil=loadImage("img/soil.png");
  life=loadImage("img/life.png");
  groundhog=loadImage("img/groundhog.png");
  robot=loadImage("img/robot.png");
  soldier=loadImage("img/soldier.png");
  
  //rpbotPosition
  robotX=floor(random(160,560));
  robotY=160+80*floor(random(0,4));
  
  //laserPosition
  laserX=robotX+25;
  laserY=robotY+37;

  //soldierPosition
  soldierX=floor(random(0,560));
  soldierY=160+80*floor(random(0,4));
}

void draw() {
  //bg.soil.life
  background(bg);
  image(soil,0,160);
  image(life,10,10);
  image(life,80,10);
  image(life,150,10);
  
  //sun
  stroke(255,255,0);
  strokeWeight(5);
  fill(253,184,19);
  ellipse(590,50,120,120);
  
  //grass
  noStroke();
  fill(124,204,25);
  rect(0,145,640,15);
  
  //groundhog
  image(groundhog,280,80);
  
  //laser
  laserMove+=2;
  laserRange=laserMove%185;
  stroke(255,0,0);
  strokeWeight(10);
  line(laserX-laserRange,laserY,laserX-laserRange+40,laserY);
  
  //robot
  image(robot,robotX,robotY);
  
  //soldier
  image(soldier,soldierX,soldierY);
  soldierX+=3;
  soldierX%=720;
}

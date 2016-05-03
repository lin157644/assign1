/* please implement your assign1 code in this file. */
PImage bg1,bg2,enemy,fighter,hpImg,treasure;

int bg1X,bg2X,fX,fY,tX,tY,eX,eY,hp;

void setup () {
  size(640,480) ;  // must use this size.
  bg1X = 0;
  bg2X = 640;
  fX = 520;
  fY = 240;
  eX = 0;
  //load all image down here.
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  enemy = loadImage("img/enemy.png");
  fighter = loadImage("img/fighter.png");
  treasure = loadImage("img/treasure.png");
  hpImg = loadImage("img/hp.png");
  //randomthings
  tX = floor(random(0,600));
  tY = floor(random(40,440));
  hp = floor(random(25,197));
  eY = floor(random(40,440));
}

void draw() {
  background(255);
  eX += 5;
  bg1X = ++bg1X;
  bg2X = ++bg2X;
  bg1X = bg1X%1280;
  bg2X = bg2X%1280;
  eX %= 640;
  image(bg1,bg1X-640,0);
  image(bg2,bg2X-640,0);
  //hpbar
  colorMode(HSB);
  fill(0,240,125);
  noStroke();
  rectMode(CORNERS);
  rect(22,14,22 + hp,30,5);
  image(hpImg,10,10);
  image(fighter,fX,fY);
  image(treasure,tX,tY);
  image(enemy,eX,eY);
 
}

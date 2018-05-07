rock minsten, minsten2, minsten3;
PImage space;
PVector pos;
int frameNr;
PImage pic0;
PGraphics offScreenBuffer;
PGraphics buffer;

void setup(){
  imageMode(CENTER);
  size(1400, 900); 
  minsten = new rock(random(0,height),0);
  minsten2 = new rock(random(0,height),160);
  minsten3 = new rock(random(0,height),320);
  space = loadImage("space.jpg");
  space.resize(width*2,height*2);
  pic0 = new PImage(50,50);
  buffer = createGraphics(width, height);
  offScreenBuffer = createGraphics(width, height);
  background(150);
  pos = new PVector(0,0);
}

void draw(){
  minsten.update();
  minsten2.update();
  minsten3.update();
  image(space, 0, 0);
  car(pos.x, pos.y);
  offScreenBuffer.beginDraw();
   
  offScreenBuffer.background(128);
  offScreenBuffer.endDraw();
  mask(offScreenBuffer);
  minsten.render();
  minsten2.render();
  minsten3.render();
}
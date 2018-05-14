rock minsten, minsten2, minsten3;
PImage space;
PVector pos;
int frameNr;
PImage pic0;
PGraphics offScreenBuffer;
PGraphics stencilbuffer;

void setup(){
  imageMode(CENTER);
  size(1600, 900); 
  minsten = new rock(random(0,height),0);
  minsten2 = new rock(random(0,height),160);
  minsten3 = new rock(random(0,height),320);
  space = loadImage("space.jpg");
  space.resize(width*2,height*2);
  pos = new PVector(0,0);
  //offScreenBuffer = createGraphics(width, height);
  //stencilbuffer = createGraphics(width, height);
}

void draw(){ 
  offScreenBuffer = createGraphics(width, height);
  stencilbuffer = createGraphics(width, height);
  image(space, 0, 0);
  carStencil(pos.x, pos.y);
  car(pos.x, pos.y);
  fill(0,0,200);
  textAlign(RIGHT);
  textSize(32);
  text(frameNr + frameCount/2, 1570, 40); 
  minsten.update();
  minsten2.update();
  minsten3.update();
  offScreenBuffer.mask(stencilbuffer);
  image(offScreenBuffer, 500, 500);
  minsten.render();
  minsten2.render();
  minsten3.render();
}
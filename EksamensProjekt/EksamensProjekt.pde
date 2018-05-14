  rock minsten, minsten2, minsten3;
PImage space;
PVector pos;
int frameNr;
PImage pic0;
PGraphics offScreenBuffer;
PGraphics buffer;
PGraphics stencilbuffer;

void setup(){
  imageMode(CENTER);
  size(1400, 900); 
  minsten = new rock(random(0,height),0);
  minsten2 = new rock(random(0,height),160);
  minsten3 = new rock(random(0,height),320);
  space = loadImage("space.jpg");
  space.resize(width*2,height*2);
  background(150);
  pos = new PVector(0,0);
  offScreenBuffer = createGraphics(width, height);
  stencilbuffer = createGraphics(width, height);
 stencilbuffer.beginDraw();

  frameNr +=1;
  stencilbuffer.fill(255);
  stencilbuffer.stroke(100);
  stencilbuffer.pushMatrix();
  //Movement
  for(int i = 0; i < 10; i++){
  if (keyPressed) {
    if (key == 'w' || key == 'W') {pos.y--;}}
  if (keyPressed){
    if (key == 's' || key == 'S') {pos.y++;}}
  if (pos.y >= 2){
    }
  }
  stencilbuffer.fill(255);
  stencilbuffer.noStroke();
  stencilbuffer.quad(90,450,180,500,900,500,1050,450);
  stencilbuffer.quad(90,450,80,400,1050,420,1050,450);
  stencilbuffer.quad(1040,420,1045,380,650,350,650,410);
  stencilbuffer.quad(900,410,580,280,400,280,400,410);
  stencilbuffer.quad(400,280,400,410,80,400,100,340);
  stencilbuffer.fill(255);
  stencilbuffer.rect(370,295,20,50,10);
  stencilbuffer.rect(650,330,30,20,8);
  stencilbuffer.triangle(670,350,675,330,720,350);
  stencilbuffer.fill(255);
  stencilbuffer.rect(480,410,30,15,5);
  stencilbuffer.stroke(255);
  stencilbuffer.strokeWeight(5);
  stencilbuffer.line(80,400,1050,420);
  stencilbuffer.strokeWeight(1);
  stencilbuffer.line(400,280,400,350);
  stencilbuffer.line(400,350,500,500);
  stencilbuffer.line(660,500,780,360);
  stencilbuffer.strokeWeight(0);
  //Window
    stencilbuffer.fill(50);
    stencilbuffer.quad(420,290,580,290,725,350,420,350);
    stencilbuffer.quad(360,300,220,330,220,350,360,350);
    stencilbuffer.fill(255);
  //Wheels
  for(int i =   0; i < 2; i++){
    stencilbuffer.translate(600,100);
    stencilbuffer.scale(0.8);
    stencilbuffer.pushMatrix();
    stencilbuffer.translate(-600,20);
    stencilbuffer.fill(255);
    stencilbuffer.arc(200,450,240,250,PI-0.41,2*PI+0.41,OPEN);
    stencilbuffer.fill(255);
    stencilbuffer.ellipse(200,450,200,200);
    stencilbuffer.fill(255);
    stencilbuffer.ellipse(200,450,140,140);
    stencilbuffer.ellipse(200,450,50,50);
    stencilbuffer.pushMatrix();
      stencilbuffer.translate(200,450);
      for(int j = 0; j < 40; j++){
        stencilbuffer.rotate(PI/16);
        stencilbuffer.strokeWeight(4);
        stencilbuffer.stroke(255);
        stencilbuffer.line(0,30,0,60);
        stencilbuffer.strokeWeight(1);
      }
    stencilbuffer.popMatrix();
    stencilbuffer.fill(255);
    stencilbuffer.ellipse(200,450,10,10);
    stencilbuffer.pushMatrix();
        stencilbuffer.translate(200,450);
        for(int j = 0; j < 4; j++){
          stencilbuffer.rotate(PI/2);
          stencilbuffer.fill(255);
         stencilbuffer.ellipse(0,13,10,10);
     }
    stencilbuffer.popMatrix();
    stencilbuffer.popMatrix();
  }
  stencilbuffer.popMatrix();
    stencilbuffer.endDraw();

 car(pos.x, pos.y);
}

void draw(){
  minsten.update();
  minsten2.update();
  minsten3.update();
  image(space, 0, 0);
    offScreenBuffer.mask(stencilbuffer);
    image(offScreenBuffer, 500, 500);
  //offScreenBuffer.beginDraw();
   
  //offScreenBuffer.background(128);
  //offScreenBuffer.endDraw();
  //mask(offScreenBuffer);
  minsten.render();
  minsten2.render();
  minsten3.render();
}
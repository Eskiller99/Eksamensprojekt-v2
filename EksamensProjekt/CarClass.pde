
PVector pos;
int frameNr;

PGraphics offScreenBuffer;
PGraphics stencilbuffer;

void setup(){
  size(1400,900);
  offScreenBuffer = createGraphics(1400, 900);
  stencilbuffer = createGraphics(width, height);
  
  //background(150);
  pos = new PVector(0,0);
 
 stencilbuffer.beginDraw();
    //ikke gennemsigtig firkant
      stencilbuffer.fill(255);
      // sort bil
      background(0,255,0);
  offScreenBuffer.beginDraw();
  
 
  
  frameNr +=1;
  //offScreenBuffer.background(255,0,0);
  offScreenBuffer.fill(255);
  offScreenBuffer.stroke(100);
  offScreenBuffer.pushMatrix();
  offScreenBuffer.translate(x,y);
  //Movement
  for(int i = 0; i < 10; i++){
  if (keyPressed) {
    if (key == 'w' || key == 'W') {pos.y--;}}
  if (keyPressed){
    if (key == 's' || key == 'S') {pos.y++;}}
  if (pos.y >= 2){
    }
  }
  offScreenBuffer.fill(255);
  offScreenBuffer.noStroke();
  offScreenBuffer.quad(90,450,180,500,900,500,1050,450);
  offScreenBuffer.quad(90,450,80,400,1050,420,1050,450);
  offScreenBuffer.quad(1040,420,1045,380,650,350,650,410);
  offScreenBuffer.quad(900,410,580,280,400,280,400,410);
  offScreenBuffer.quad(400,280,400,410,80,400,100,340);
  offScreenBuffer.fill(50);
  offScreenBuffer.rect(370,295,20,50,10);
  offScreenBuffer.rect(680,340,30,20,8);
  offScreenBuffer.triangle(700,360,705,340,740,360);
  offScreenBuffer.fill(210);
  offScreenBuffer.rect(480,410,30,15,5);
  offScreenBuffer.stroke(0);
  offScreenBuffer.strokeWeight(5);
  offScreenBuffer.line(80,400,1050,420);
  offScreenBuffer.strokeWeight(1);
  offScreenBuffer.line(400,280,400,350);
  offScreenBuffer.line(400,350,500,500);
  offScreenBuffer.line(660,500,780,360);
  offScreenBuffer.strokeWeight(0);
  //Wheels
  for(int i =   0; i < 2; i++){
    offScreenBuffer.translate(600,100);
    offScreenBuffer.scale(0.8);
    offScreenBuffer.pushMatrix();
    offScreenBuffer.translate(-600,20);
    offScreenBuffer.fill(0);
    offScreenBuffer.arc(200,450,240,250,PI-0.41,2*PI+0.41,OPEN);
    offScreenBuffer.fill(60);
    offScreenBuffer.ellipse(200,450,200,200);
    offScreenBuffer.fill(200);
    offScreenBuffer.ellipse(200,450,140,140);
    offScreenBuffer.ellipse(200,450,50,50);
    offScreenBuffer.pushMatrix();
      offScreenBuffer.translate(200,450);
      for(int j = 0; j < 40; j++){
        offScreenBuffer.rotate(PI/16);
        offScreenBuffer.strokeWeight(4);
        offScreenBuffer.stroke(100);
        offScreenBuffer.line(0,30,0,60);
        offScreenBuffer.strokeWeight(1);
      }
    offScreenBuffer.popMatrix();
    offScreenBuffer.fill(0);
    offScreenBuffer.ellipse(200,450,10,10);
    offScreenBuffer.pushMatrix();
        offScreenBuffer.translate(200,450);
        for(int j = 0; j < 4; j++){
          offScreenBuffer.rotate(PI/2);
          offScreenBuffer.fill(170);
          offScreenBuffer.ellipse(0,13,10,10);
      }
    offScreenBuffer.popMatrix();
    offScreenBuffer.popMatrix();
  }
    offScreenBuffer.popMatrix();
    
    offScreenBuffer.endDraw();
      //
      stencilbuffer.rect(25,25,width,height);
      
      //gennemsigtig cirkel
      stencilbuffer.noStroke();
      stencilbuffer.fill(0);
      stencilbuffer.ellipse(width/2,height/2,20,20);
    stencilbuffer.endDraw();
    
 car(pos.x, pos.y);
}

void draw(){
    
    background(0,255,0);
     
    offScreenBuffer.mask(stencilbuffer);
    image(offScreenBuffer, 0, 0);
    }

void car(float x, float y){
  background(0,255,0);
  offScreenBuffer.beginDraw();
  
 
  
  frameNr +=1;
  //offScreenBuffer.background(255,0,0);
  offScreenBuffer.fill(255);
  offScreenBuffer.stroke(100);
  offScreenBuffer.pushMatrix();
  offScreenBuffer.translate(x,y);
  //Movement
  for(int i = 0; i < 10; i++){
  if (keyPressed) {
    if (key == 'w' || key == 'W') {pos.y--;}}
  if (keyPressed){
    if (key == 's' || key == 'S') {pos.y++;}}
  if (pos.y >= 2){
    }
  }
  offScreenBuffer.fill(200);
  offScreenBuffer.noStroke();
  offScreenBuffer.quad(90,450,180,500,900,500,1050,450);
  offScreenBuffer.quad(90,450,80,400,1050,420,1050,450);
  offScreenBuffer.quad(1040,420,1045,380,650,350,650,410);
  offScreenBuffer.quad(900,410,580,280,400,280,400,410);
  offScreenBuffer.quad(400,280,400,410,80,400,100,340);
  offScreenBuffer.fill(50);
  offScreenBuffer.rect(370,295,20,50,10);
  offScreenBuffer.rect(680,340,30,20,8);
  offScreenBuffer.triangle(700,360,705,340,740,360);
  offScreenBuffer.fill(210);
  offScreenBuffer.rect(480,410,30,15,5);
  offScreenBuffer.stroke(0);
  offScreenBuffer.strokeWeight(5);
  offScreenBuffer.line(80,400,1050,420);
  offScreenBuffer.strokeWeight(1);
  offScreenBuffer.line(400,280,400,350);
  offScreenBuffer.line(400,350,500,500);
  offScreenBuffer.line(660,500,780,360);
  offScreenBuffer.strokeWeight(0);
  //Wheels
  for(int i =   0; i < 2; i++){
    offScreenBuffer.translate(600,100);
    offScreenBuffer.scale(0.8);
    offScreenBuffer.pushMatrix();
    offScreenBuffer.translate(-600,20);
    offScreenBuffer.fill(0);
    offScreenBuffer.arc(200,450,240,250,PI-0.41,2*PI+0.41,OPEN);
    offScreenBuffer.fill(60);
    offScreenBuffer.ellipse(200,450,200,200);
    offScreenBuffer.fill(200);
    offScreenBuffer.ellipse(200,450,140,140);
    offScreenBuffer.ellipse(200,450,50,50);
    offScreenBuffer.pushMatrix();
      offScreenBuffer.translate(200,450);
      for(int j = 0; j < 40; j++){
        offScreenBuffer.rotate(PI/16);
        offScreenBuffer.strokeWeight(4);
        offScreenBuffer.stroke(100);
        offScreenBuffer.line(0,30,0,60);
        offScreenBuffer.strokeWeight(1);
      }
    offScreenBuffer.popMatrix();
    offScreenBuffer.fill(0);
    offScreenBuffer.ellipse(200,450,10,10);
    offScreenBuffer.pushMatrix();
        offScreenBuffer.translate(200,450);
        for(int j = 0; j < 4; j++){
          offScreenBuffer.rotate(PI/2);
          offScreenBuffer.fill(170);
          offScreenBuffer.ellipse(0,13,10,10);
      }
    offScreenBuffer.popMatrix();
    offScreenBuffer.popMatrix();
  }
    offScreenBuffer.popMatrix();
    //offScreenBuffer.loadPixels();
    //for (int i = 0; i > 100; i++){
    //  for (int j = 0; j > 100; j++){
    //    offScreenBuffer.pixels[i+width*j] = color(0,255,0);
    //  }
    //}
    // offScreenBuffer.updatePixels();
    
    //color pink = color(255, 102, 204);
    //offScreenBuffer.loadPixels();
    //for (int i = 0; i < (width*height/2)-width/2; i++) {
    //  offScreenBuffer.pixels[i] = color(0,0,0,0);
    //}
    //offScreenBuffer.updatePixels();
 
   
    //color pink = color(255, 102, 204);
    //offScreenBuffer.loadPixels();
    //for (int i = 0; i < (width*height/2)-width/2; i++) {
    //  offScreenBuffer.pixels[i] = color(0,0,0,0);
    //}
    //offScreenBuffer.updatePixels();
    
    
    
    //offScreenBuffer.fill(color(0,0,0,128));
    //offScreenBuffer.rect(0,0,1000,1000);
    offScreenBuffer.endDraw();
    
    
    
    
}

void car(float x, float y){
  offScreenBuffer.beginDraw();

  frameNr +=1;
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
  offScreenBuffer.fill(0);
  offScreenBuffer.rect(650,330,30,20,8);
  offScreenBuffer.triangle(670,350,675,330,720,350);
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
    //offScreenBuffer.fill(50);
    //offScreenBuffer.quad(420,290,580,290,725,350,420,350);
    //offScreenBuffer.quad(360,300,220,330,220,350,360,350);
    //offScreenBuffer.fill(255);
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
    
    
    
    
}
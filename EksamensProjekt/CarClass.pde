
void car(float x, float y){
  
  frameNr +=1;
  background(0,255,0);
  fill(255);
  stroke(100);
  pushMatrix();
  translate(x,y);
  //Movement
  for(int i = 0; i < 10; i++){
  if (keyPressed) {
    if (key == 'w' || key == 'W') {pos.y--;}}
  if (keyPressed){
    if (key == 's' || key == 'S') {pos.y++;}}
  if (pos.y >= 2){
    }
  }
  fill(200);
  noStroke();
  quad(90,450,180,500,900,500,1050,450);
  quad(90,450,80,400,1050,420,1050,450);
  quad(1050,420,1040,390,650,350,650,410);
  quad(900,410,580,280,400,280,400,410);
  quad(400,280,400,410,80,400,100,340);
  fill(50);
  rect(370,295,20,50,10);
  rect(680,340,30,20,8);
  triangle(700,360,705,340,740,360);
  fill(210);
  rect(480,410,30,15,5);
  stroke(0);
  strokeWeight(5);
  line(80,400,1050,420);
  strokeWeight(1);
  line(400,280,400,350);
  line(400,350,500,500);
  line(660,500,780,360);
  strokeWeight(0);
  //Wheels
  for(int i =   0; i < 2; i++){
    translate(600,100);
    scale(0.8);
    pushMatrix();
    translate(-600,20);
    fill(0);
    arc(200,450,240,250,PI-0.24,2*PI+0.24,OPEN);
    fill(60);
    ellipse(200,450,200,200);
    fill(200);
    ellipse(200,450,140,140);
    ellipse(200,450,50,50);
    pushMatrix();
      translate(200,450);
      for(int j = 0; j < 40; j++){
        rotate(PI/16);
        strokeWeight(4);
        stroke(100);
        line(0,30,0,60);
        strokeWeight(1);
      }
    popMatrix();
    fill(0);
    ellipse(200,450,10,10);
    pushMatrix();
        translate(200,450);
        for(int j = 0; j < 4; j++){
          rotate(PI/2);
          fill(170);
          ellipse(0,13,10,10);
      }
    popMatrix();
    popMatrix();
  }
    popMatrix();
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
}
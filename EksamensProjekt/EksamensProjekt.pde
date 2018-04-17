rock minsten, minsten2, minsten3;
PImage space;

void setup(){
  imageMode(CENTER);
  size(1400, 900); 
  minsten = new rock(random(0,height),0);
  minsten2 = new rock(random(0,height),160);
  minsten3 = new rock(random(0,height),320);
  space = loadImage("space.jpg");
  space.resize(width*2,height*2);
}

void draw(){
  minsten.update();
  minsten2.update();
  minsten3.update();
  image(space, 0, 0);
  minsten.render();
  minsten2.render();
  minsten3.render();
}
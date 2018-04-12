
rock minsten;
rock minsten2;
rock minsten3;

void setup(){
  imageMode(CENTER);
  size(1400,700); 
  minsten = new rock(random(0,height),0);
  minsten2 = new rock(random(0,height),240);
  minsten3 = new rock(random(0,height),480);
}

void draw(){
  minsten.update();
  minsten2.update();
  minsten3.update();
  background(0);
  minsten.render();
  minsten2.render();
  minsten3.render();
}
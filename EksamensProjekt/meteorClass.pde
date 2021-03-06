class rock{
  PVector pos;
  int spawntimer;
  PImage meteor;
  int rot;
  float framespeed, size, angle;
  
  rock(float pos_y, int setSpawntimer){
    pos = new PVector(width + 125, pos_y);
    spawntimer = setSpawntimer;
    meteor = loadImage("meteor.png");
    int setSize = (int)random(100,200);
    meteor.resize(setSize, setSize);
    framespeed = 10;
    angle = random(2*(22/7));
    size = random(0.8,1.4);
    rot = 1;
  }
  
  void update(){
    angle++;
    if (spawntimer < 0){
      pos.x-=framespeed;
       if (pos.x < -80){
         pos.x = width + 140;
         pos.y = random(height);
         framespeed+=0.3;
         rot += 100;
       }
     }
     else spawntimer--;
     if (pos.y < 125) 
       pos.y = 125;
     if (pos.y > (height - 125)) 
       pos.y = height - 125;
  }
  
  void render(){
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(0.05 * angle + rot);
    scale(size);
    image(meteor, 0, 0);
    popMatrix();
    
  }
}
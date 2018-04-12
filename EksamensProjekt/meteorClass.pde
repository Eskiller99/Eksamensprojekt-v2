class rock{
  PVector pos;
  int spawntimer;
  PImage meteor;
  float framespeed;
  float frame;
  
  rock(float pos_y, int setSpawntimer){
    pos = new PVector(width + 125, pos_y);
    spawntimer = setSpawntimer;
    meteor = loadImage("meteor.png");
    int setSize = (int)random(150,200);
    meteor.resize(setSize, setSize);
    framespeed = 3;
    frame = 1;
    frame++;
  }
  
  void update(){
    if (spawntimer < 0){
      pos.x-=framespeed;
       if (pos.x < -80){
         pos.x = width + 125;
         pos.y = random(height);
         framespeed+=0.1;
         frame = 1;
       }
     }
     else spawntimer--;
     if (pos.y < 125) 
       pos.y = 125;
     if (pos.y > (height - 125)) 
       pos.y = height - 125;
  }
  
  void render(){
    
    image(meteor, pos.x, pos.y);
  }
}
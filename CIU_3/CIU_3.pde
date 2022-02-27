// https://www.solarsystemscope.com/textures/
// http://www.planetaryvisions.com
Planet sun; // Sí, el sol no es un plante, lo sé
Planet mercury;
Planet venus;
Planet earth;
Planet mars;
Planet jupiter;
Planet saturn;
Planet uranus;
Planet neptune;
Satellite moon;
Satellite fobos;
Satellite deimos;

PImage starsTexture;

float scale = 1.0;
float rotateY = 0.0;
float rotateX = 0.0;

boolean up = false;
boolean down = false;
boolean left = false;
boolean rigth = false;

float l = 1.0;

void setup(){
  size(1200,600,P3D);
  surface.setResizable(false); //<>//
  
  PImage sunTexture = loadImage("./textures/2k_sun.jpg");
  starsTexture = loadImage("./textures/2k_stars_milky_way.jpg");
  PImage mercuryTexture = loadImage("./textures/2k_mercury.jpg");
  PImage venusTexture = loadImage("./textures/2k_venus.jpg");
  PImage earthTexture = loadImage("./textures/2k_earth.jpg");
  PImage marsTexture = loadImage("./textures/2k_mars.jpg");
  PImage jupiterTexture = loadImage("./textures/2k_jupiter.jpg");
  PImage saturnTexture = loadImage("./textures/2k_saturn.jpg");
  PImage uranusTexture = loadImage("./textures/2k_uranus.jpg");
  PImage neptuneTexture = loadImage("./textures/2k_neptune.jpg");
  PImage moonTexture = loadImage("./textures/2k_moon.jpg");
  PImage fobosTexture = loadImage("./textures/fobos.jpg");
  PImage deimosTexture = loadImage("./textures/deimos.jpg");
  
  moon = new Satellite(10.0, -0.025, new PVector(250, 30, 0),"Moon", moonTexture);
  fobos = new Satellite(10.0, -0.03, new PVector(250, 30, 0),"Phobos", fobosTexture);
  deimos = new Satellite(10.0, -0.025, new PVector(500, 30, 0),"Deimos", deimosTexture);
  
  sun = new Planet(200.0, 0.001, new PVector(0, 230, 0),"Sun", sunTexture,null); // Sí, estrella. No, planeta //<>//
  mercury = new Planet(20.0, 0.01, new PVector(1000, 50, 0),"Mercury", mercuryTexture,null);
  venus = new Planet(45.0, 0.0035, new PVector(1400, 75, 0),"Venus", venusTexture,null);
  earth = new Planet(40.0, 0.003, new PVector(2100, 70, 0),"The Earth", earthTexture, moon);
  mars = new Planet(30.0, 0.0027, new PVector(3000, 60, 0),"Mars", marsTexture,fobos,deimos);
  jupiter = new Planet(80.0, 0.002, new PVector(3900, 110, 0),"Jupiter", jupiterTexture,null);
  saturn = new Planet(70.0, 0.0015, new PVector(4600, 100, 0),"Saturn", saturnTexture,null);
  uranus = new Planet(40.0, 0.0029, new PVector(5000, 70, 0),"Uranus", uranusTexture,null);
  neptune = new Planet(40.0, 0.0028, new PVector(5300, 70, 0),"Neptune", neptuneTexture,null);
  
  for(int i = 0; i < 10; i++){
    scale(l-=0.05);
  }
}

void draw(){
  background(starsTexture);
  textAlign(LEFT);
  textSize(20);
  text("Mouse Wheel Up - Zoom In",width-1180,height-60);
  text("Mouse Wheel Down - Zoom Out",width-1180,height-40);
  text("ESC - Exit",width-1180,height-20);
  
  translate(width/2, height/2,0); 
  scale(l);
  
  rotateX(radians(-20));
  
  sun.show();
  mercury.show();
  venus.show();
  earth.show();
  mars.show();
  jupiter.show();
  saturn.show();
  uranus.show();
  neptune.show();
  
  keyEvent();
}

void keyEvent(){
  if(up) rotateX+= 0.02;
  if(down) rotateX-= 0.02;
  if(left) rotateY+= 0.02;
  if(rigth) rotateY-= 0.02;
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  println(l);
  if(e < 0){
    l+=0.02;
  }else{
    if(l < 0.02) return;
    l-=0.02;
  }
}

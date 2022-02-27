abstract class AstronomicalObject {
 
  float speed;
  float rotation = 0.001;
  PVector vector;
  PShape obj;
  float scale = 0.3;
  String name;
  
  AstronomicalObject(float r, float speed,PVector vector,String nombre,PImage texture){
    this.speed = speed;
    this.vector = vector;
    this.name = nombre;
    
    noStroke();
    noFill();
    obj = createShape(SPHERE, r);
    obj.setTexture(texture);
    endShape();
  }
  
  abstract void show();
  
}

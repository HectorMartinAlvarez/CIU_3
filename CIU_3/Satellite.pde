class Satellite extends AstronomicalObject {
  
  Satellite(float r, float speed,PVector vector,String nombre,PImage texture){
    super(r,speed,vector,nombre,texture);
    
  }
  
  void show(){
    
    pushMatrix();
    rotateY(this.rotation+=this.speed);
    translate(this.scale * vector.x, vector.y, vector.z);
    text(this.name,0,vector.y);
    shape(this.obj);
    popMatrix();
  }
}

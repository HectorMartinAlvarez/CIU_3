class Planet extends AstronomicalObject {
  
  AstronomicalObject[] sate;
  
  Planet(float r, float speed,PVector vector,String nombre,PImage texture, AstronomicalObject... sate){
    super(r,speed,vector,nombre,texture);
    this.sate = sate;
  }
  
  void show(){
    pushMatrix();
    rotateY(this.rotation+=this.speed); //<>//
    translate(this.scale * vector.x, 0, 0);
    rotateY(this.rotation);
    shape(this.obj);
    if(this.sate != null){
      for(AstronomicalObject e : sate){
        e.show();
      }
    }
    popMatrix();
    
    pushMatrix();
    rotateY(this.rotation);
    translate(this.scale * vector.x, 0, 0);
    rotateY(-this.rotation);
    textSize(this.scale*90);
    textAlign(CENTER);
    text(this.name,0,-vector.y);
    popMatrix();
  }
}

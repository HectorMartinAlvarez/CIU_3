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
    textSize(20);
    textAlign(CENTER);
    text(this.name,0,vector.y);
    shape(this.obj);
    if(this.sate != null){
      for(AstronomicalObject e : sate){
        e.show();
      }
    }
    popMatrix();
  }
}

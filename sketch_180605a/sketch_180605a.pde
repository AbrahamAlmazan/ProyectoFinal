Particle[] p;
 PImage equipo;
 
void setup(){
  size(1280,960);
  equipo= loadImage("equipo.jpeg");
 p=new Particle [500];
 for(int i=0;i<p.length;i++){
  p[i]=new Particle(); 
 }
  background(0);
}

void draw(){


 for(int i=0;i<p.length;i++){
  p[i].display();
  p[i].mover();
  p[i].limites(); 
 }
  
}

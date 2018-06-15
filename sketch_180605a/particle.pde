class Particle{
 PVector pos;
  PVector mov;
  float aux;
  float speed;
 
  Particle(){ 
   pos=new PVector(width/2, height/2);
   aux= random(TWO_PI); 
   speed=random(1,2);
   mov=new PVector(cos(aux)*speed,sin(aux)*speed);
   
   
  }
  
  void display(){
    noStroke();
    color c=equipo.get(int(pos.x),int(pos.y));
    fill(c,25);
    ellipse(pos.x,pos.y, 8,8);
  }
  
  void mover(){
    pos.add(mov);
  }
  
  void limites(){
   if(pos.x>width-4){
   mov.x*=-1;
  } else if(pos.x<0+4){
   mov.x*=-1;
  } 
  
  if(pos.y>height-4){
   mov.y*=-1; 
  }else if(pos.y<0+4){
   mov.y*=-1; 
  }
  
  }
}

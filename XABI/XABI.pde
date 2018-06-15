import ddf.minim.*;

Minim minim;
AudioInput in;

float tam, tamano, tam2, tamanio, tam3, tamanio2;
PImage img, jupiter, luna;
float ver;

//jupiter
int x=100, y=600, z=550;

//LUNA
int a=10, b=10, c=150;

float angulo=0, angus=0;
color clr, col2, col3, circol, circol2, circol3;

void setup(){
  size(1366, 768);
  img=loadImage("estrella.png");
  jupiter=loadImage("jupiter.jpg");
  luna=loadImage("luna.jpg");
  minim=new Minim(this);
  in=minim.getLineIn();
}


void draw(){
  background(img);
  //background(255);
  
  for(int i=0 ; i<in.bufferSize()-1 ; i++){
    clr=color(random(0, in.left.get(i)*100), random(0, in.left.get(i)*100), random(0, in.left.get(i)*210));
    tam=in.left.get(i)*random(0, 130);
    
    col2=color(random(0, in.left.get(i)*250), random(0, in.left.get(i)*300), random(0, in.left.get(i)*320));
    tam2=in.left.get(i)*random(0, 200);
    
    col3=color(random(0, in.left.get(i)*300), random(0, in.left.get(i)*150), random(50, in.left.get(i)*130));
    tam3=in.left.get(i)*random(0, 300);
    
    circol=color(random(0, in.left.get(i)*50), random(0, in.left.get(i)*500), random(50, in.left.get(i)*20));
    circol2=color(random(0, in.left.get(i)*150), random(0, in.left.get(i)*40), random(50, in.left.get(i)*50));
    circol3=color(random(0, in.left.get(i)*250), random(0, in.left.get(i)*100), random(50, in.left.get(i)*100));
  }
  
  tamano=pow(tam, 2);
  tamanio=pow(tam2, 2);
  tamanio2=pow(tam3, 2);
  
  strokeWeight(5);
  noFill();
  
  pushMatrix();
  
  
  translate(width/2,243); 
  stroke(clr);
  triangle(0, -152-tamano , -145-tamano, 90+tamano, 145+tamano, 90+tamano);
  ellipse(width/2-random(0, 90), height/2-100, tamano, tamano);
  
  stroke(col2);
  triangle(0, -132-tamanio , -123-tamanio, 78+tamanio, 123+tamanio, 78+tamanio);
  ellipse(width/2-650, height/2-300, tamanio, tamanio);
  
  stroke(col3);
  triangle(0, -112-tamanio2 , -101-tamanio2, 66+tamanio2, 101+tamanio2, 66+tamanio2);
  ellipse(width/2-1000, height/2-500, tamanio2, tamanio2);
  
  popMatrix();
  
  ver+=3;
  
  point(width/2,ver);
  if(ver==171){
   ver=315; 
  }
  if(ver>height){
   ver=0; 
    
  }
  
  float x=z*sin(angulo);
  float y=z*cos(angulo);
  //point(x + 200, y + 250);
  image(jupiter, x+550, y+350);
  
  float a=c*sin(angus);
  float b=c*cos(angus);
  //point(x + 200, y + 250);
  image(luna, x+200, y-50);
  
  angulo+=0.01;
  angus+=0.01;
  //image(jupiter, width/2-100, 100);
  //clr=color(random(0, 255), random(0, 255), random(0, 255));
  col2=color(random(0, 255), random(0, 255), random(0, 255));
  col3=color(random(0, 255), random(0, 255), random(0, 255));
  
}

import ddf.minim.*;

Minim minim;
AudioInput in;

float tam, tamano;
float ver;
PImage img,img1;

//Circulo mayor
int x = 100, y = 100, z = 150;

//Circulo medio
int a = 70, b = 70, c = 130;

//Circulo menor
int i = 70, j = 70, k = 110;

//Circulo mayor inferiro
int d = 100, e = 100, f = 100;

//Circulo menor inferior
int l = 100, m = 100, n = 50;

//Circulo mayor superior
int o = 100, p = 100, q = 50;

//Circulo menor superior
int r = 100, s = 100, t = 40;

float angulo = 0;
color clr;

void setup(){

  size(400,650);
  img = loadImage("back.jpg");
  img1 = loadImage("back.png");
  size(400,650);
  background(0,0);
  image(img,0,0);
  image(img1,0,0);
  minim = new Minim(this);
  in = minim.getLineIn();
}


void draw(){
  
  for(int i = 0; i < in.bufferSize() - 1; i++)
  {
     tam =in.left.get(i)*20;
  }
 tamano = pow(tam,2);
   clr = color(random(255),random(255),random(255),random(255));
  stroke(clr);
  strokeWeight(3);
  noFill();
pushMatrix();
  image(img,0,0);
  translate(width/2,243); 
   rotate(frameCount*radians(90) / 100);
  triangle(0,-152-tamano ,-145-tamano,90+tamano,145+tamano,90+tamano);
  
  clr = color(random(255),random(255),random(255),random(255));
  stroke(clr);
  rotate(frameCount*radians(90) / 300);
  triangle(0,-132-tamano,-123-tamano,78+tamano,123+tamano,78+tamano);
  
  clr = color(random(255),random(255),random(255),random(255));
  stroke(clr);
  rotate(frameCount*radians(90) / 200);
  triangle(0,-112-tamano,-101-tamano,66+tamano,101+tamano,66+tamano);
  popMatrix();
  
  for(int auc=0;auc<100;auc++){
     ver+=3;
  clr = color(random(255),random(255),random(255),random(255));
  stroke(clr);
  point(width/2,ver);
  if(ver==171){
   ver=315; 
  }
  if(ver>height){
   ver=0; 
    
  }
  clr = color(random(255),random(255),random(255),random(255));
  stroke(clr);
  float x = z * sin(angulo);
  float y = z * cos(angulo);
  point(x + 200, y + 250);
  
  clr = color(random(255),random(255),random(255),random(255));
  stroke(clr);
  
  float a = c * sin(angulo);
  float b = c * cos(angulo);
  point(a + 200, b + 250);
  
  clr = color(random(255),random(255),random(255),random(255));
  stroke(clr);
  
  float i = k * sin(angulo);
  float j = k * cos(angulo);
  point(i + 200, j + 250);
  
  clr = color(random(255),random(255),random(255),random(255));
  stroke(clr);
  
  float d = f * sin(angulo);
  float e = f * cos(angulo);
  point(d + 200, e + 460);
  
  clr = color(random(255),random(255),random(255),random(255));
  stroke(clr);
  
  float l = n * sin(angulo);
  float m = n * cos(angulo);
  point(l + 200, m + 510);
  
  clr = color(random(255),random(255),random(255),random(255));
  stroke(clr);
  
  float o = q * sin(angulo);
  float p = q * cos(angulo);
  point(o + 200, p + 90);
  
  clr = color(random(255),random(255),random(255),random(255));
  stroke(clr);
  
  float r = t * sin(angulo);
  float s = t * cos(angulo);
  point(r + 200, s + 80);
  
  angulo += 0.1;
  clr = color(random(255),random(255));
  
  image(img1,0,0);
   
  } 
}

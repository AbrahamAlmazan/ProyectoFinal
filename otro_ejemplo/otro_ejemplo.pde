import ddf.minim.*;

Minim minim;
AudioInput in;
float izq, izquierda,der,derecha;
color  clr;
PImage img;
void setup()
{
  size(1280,720);
img = loadImage("jupiter.jpg");
 image(img,0,0);

  minim = new Minim(this);
  
  // use the getLineIn method of the Minim object to get an AudioInput
  in = minim.getLineIn();
}

void draw()
{
  image(img,0,0);
  
  stroke(255);
  
  // draw the waveforms so we can see what we are monitoring
  for(int i = 0; i < in.bufferSize() - 1; i++)
  {
     izq =in.left.get(i)*20;
     der=in.right.get(i)*20;
  }
 izquierda= pow(izq,2);
 derecha=pow(der,2);
  stroke(255);
  strokeWeight(10+izquierda/15);
  noFill();
  pushMatrix();
  translate(width/2,height/2); 
  
   clr = color(random(255),random(255),random(255));
  stroke(clr);
  rotate(frameCount*radians(90) / 250);
  strokeWeight(10+derecha/50);
  triangle(0,-270-derecha ,-245-derecha,190+derecha,245+derecha,190+derecha);
  
   clr = color(random(255),random(255),random(255));
  stroke(clr);
   rotate(frameCount*radians(90) / 100);
   strokeWeight(10+izquierda/50);
  triangle(0,-202.5-izquierda ,-183.75-izquierda,142.5+izquierda,183.75+izquierda,142.5+izquierda);
  
   clr = color(random(255),random(255),random(255));
  stroke(clr);
  strokeWeight(10+derecha/50);
   rotate(frameCount*radians(90) / 700);
  triangle(0,-135-derecha ,-122.5-derecha,95-derecha,122.5+derecha,95+derecha);
  popMatrix();
}

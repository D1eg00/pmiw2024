

PImage imagen;

void setup(){
  size(800,400);
  
  background(255,10,10);
  imagen = loadImage("imagen.jpg");
  
  noStroke();
}
  

void draw(){
   image(imagen,0,0,230,230);
  fill(17,170,37);// X1,Y1,X2,Y2);
  ellipse(400,120,150,160);
  fill(17,170,37);
  rect(325,140,150,150);
  fill(255,10,10);
  rect(325,140,150,10);
  //PIERNA
  fill(17,170,37);
  rect(345,290,40,70);
  fill(17,170,37);
  rect(415,290,40,70);
  //BRAZO
  fill(17,170,37);
  ellipse(295,210,40,120);
  fill(17,170,37);
  ellipse(505,210,40,120);
  // OJOS.
  fill(255);
  circle(370,90,23);
  fill(255);
  circle(435,90,23);
  //ANTENA}
  fill(17,170,37);
  ellipse(370,40,7,30);
  fill(17,170,37);
  ellipse(435,40,7,30);
 
  
  
}

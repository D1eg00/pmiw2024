//tp1
// Comision 3
// Diego Miranda
// Legajo 91378/5

// texto
String txt1;
String txt2;
String txt3;
String txt4;
String txt5;
String txt6;
float posx,posy=100,tiempo, cuenta;
//Imagen
PImage fondo1;
PImage fondo2;
PImage fondo3;
PImage fondo4;
PImage fondo5;
PImage fondo6;
boolean estado,p1,p2,p3,p4,p5,p6;
void setup () {
  size(640, 480); // Resolucion de la pantalla.
  posx = 0;
  fondo1 = loadImage("imagen_0.jpg");
}
void draw() {
  // datos de la pantalla + imagen1
  cuenta = frameCount;
  tiempo = cuenta/60;
  if(posy<=height){
  posy--;
  if(posy<-500){
  posy = height;
  }
  }
  if (8>tiempo){
    p1 = true;
    estado = p1;
    if (estado == p1){
    txt1 = "Las ranas verdes de ojos rojos\nSon carnívoros nocturnos que\nesconden en los bosques y \natrapan grillos,moscas y polillas\ncon su larga y pegajosa lengua.";
    image (fondo1,0,0);
    fondo1 = loadImage("imagen_2.jpg");
    fill(255,255,255);
    textSize(48);
    text(txt1,0,posy);
    }
  }
  // datos de la pantalla + imagen 2
  if (tiempo == 8){
    p2 = true;
    estado = p2;
    if (estado == p2){
    fondo2 = loadImage("imagen_0.jpg");
    image (fondo2,0,0);
    txt2="Las ardillas son animales\nomnívoros que tienen\nuna dieta basada en semillas,\nfrutos secos y vegetales.";
    fill(255,255,255);
    textSize(48);
    text(txt2,0,150);
    }
  }
  // datos de la pantalla + imagen 3
  if (tiempo == 15){
    p3 = true;
    estado = p3;
    if (estado == p3){
  fondo3 = loadImage("imagen_3.jpg");
  image (fondo3,0,0);
  txt3 = "el zorro es omnívoro; se alimenta\nde insectos, huevos de ave, pollos,\ncrías de diversos mamíferos,liebres,\naunque en poblaciones naturales\n  se alimenta de ratones y \notros micromamíferos.";
  fill(255,255,255);
  textSize(40);
  text(txt3,0,140);
    }
  }
  // datos de la pantalla + imagen 4
  if (tiempo == 25){
    p4 = true;
    estado = p4;
    if (estado == p4){
  fondo4 = loadImage("imagen_4.jpg");
  image (fondo4,0,0);
  txt4 = "La Vaca es un animal mamífero,\n y herbívoro porque se alimenta \n de hierba y pastos.";
  //fill(mouseX,mouseY,(mouseX+mouseY)/2);
  fill(255,255,255);
  textSize(48);
  text(txt4,0,150);
    }
    }
    // datos de la pantalla + imagen 5
     if (tiempo == 30){
    p5 = true;
    estado = p5;
    if (estado == p5){
  fondo5 = loadImage("imagen_5.jpg");
  image (fondo5,0,0);
  txt5 = "Las crías son amamantadas y viven con la\n madre al menos hastalos 3 años de edad,\nperíodo durante el cual son transportadas\n a la espaldaaunque no se independizan \ntotalmente  hasta llegara la adolescencia\n entre los 7 y los 10 años.";
  fill(255,255,255);
  textSize(35);
  text(txt5,0,150);
    }
     }
  // datos de la pantalla + imagen 6
   if (tiempo == 37){
    p6 = true;
    estado = p6;
    if (estado == p6){
  fondo6 = loadImage("imagen_7.jpg");
  image (fondo6,0,0);
  txt6 = "Fin de la presentacion\nReiniciar al comienzo\n r";
  fill(255,255,255);
  textSize(35);
  text(txt6,200,200);
    }
     }
  //datos de la pantalla
  println(tiempo/60,posy);
}
void keyPressed() {  // reinicio de todas las variables
  if (key == 'r'){frameCount = 0;p1=true;posy=100;} // Botone de reinicio "r"
}

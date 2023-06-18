//tp2
// Comision 2
// Diego Miranda
// Legajo 91378/5
//FALTO EL VIDEO

//String r;
PImage imagen; // Imagen asignada
//color bg;
 int t; // t de variables
 int velA,accA; //Velocidad (velA), aceleración(accA).
 
boolean debug;  //variable para actibar o desactivar la visualización.

int tam; // de tamaño
int cant =35; // cantidad
void setup(){
  size(800,400);
  imagen = loadImage("opción.png");
  colorMode(HSB,300,100,100); //(HSB) Saturación de color y BRILLO)
   //bg=color(0);  Revisar bien ante de ejecutar el programa.
  t= 43; // tamaño de la ellipse
  accA= 1; // Donde la velocidad Angular sea igual.
  
  debug = false;
}
  

void draw(){
  //Imagen
 image(imagen,0,0,400,400);
  //background(0);// revisar bien ante de ejecutar el programa.
  
  pushMatrix(); // pushMatrix() + pushStyle()
  
  translate(750,200); // COORDENADA DE ellipse.
  //background(bg);// Me cubre toda la imagen en la pantalla
  
   // for (iniciador; condicion; actualización) { 
     //(for estructura de control) acciones;
   for (int i=0;i<360*10;i+=10){
  float angulo = radians(i+velA);
  float distancia = map(i,360*10,0,height/1,0);
    // conversión de POLARES a CARTESIANAS
  float x = distancia * cos(angulo);
   float y = distancia * sin(angulo);
  
   
  float distMax = dist(0,0,width/2, height/2);// Diagonal entre esquina y centro // distancia máxima de float
 float hue = map(distancia,0,distMax,0,359);  // Para hacer una función map
// float hue= pasa por todo el valor de hue. (PUEDE ESTAR EN EL CICLO FOR hue)
 fill(hue,100,100);
 ellipse(x,y,t,t); // ellipse en el centro de la pantalla.
   
   
  
  } 
   popMatrix(); //
   velA += accA;
    
  pushMatrix();
  translate(400,0);
  
  tam = width/cant;
  float relleno= map (width,0,height,0,255);
  for(int y=0; y<=height; y+=30){
  for(int x=0; x<=width; x+=30){
  

  float distan = dist(400,0,x,y);
  float tono = distan*255/dist(width/2,height/2,0,0);
  //fill(x,relleno,y);
  if( debug ){
  fill(x,relleno,tono);
   ellipse(x + frameCount%30,y,tam,tam); // frameCount va inclementar de 1.
  }
  }
}
  
  
    popMatrix();
    println(frameRate);// VER EN CONSOLA QUE SEA MAYOR A 30FPS, IDEAL 60FPS.
}


void keyPressed() {// Uso del Teclado.
  if( key == 'd' ){
    debug = !debug;  //si debug es false, entonces le asigna true (y viceversa)
  }
}
void mousePressed(){ // Si apretó el mouse, cambia el valor que le asigne.
   t = 30;
}

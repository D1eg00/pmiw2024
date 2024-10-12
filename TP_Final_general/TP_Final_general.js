let pantalla;
let posX1, posY1, posX2, posY2, botT;
//
let fondo =[];


function setup() {
  createCanvas(640, 480);
  textSize(20);
  textAlign(CENTER, CENTER);
  noStroke();

  pantalla = "menu";
  // BOTONES 1
  posX1 = 500;
  posY1 = 400;
  // BOTONES 2
  posX2 = 300;
  posY2 = 400;
  // ANCHO DEL BOTON
  botT = 120;

  //inicializar();
}

function draw() {
  background(0);

  if (pantalla == ("menu")) {
    Menu();
  } else if (pantalla == ("p1")) {
    Pant1();
  } else if (pantalla == ("p2")) {
    Pant2();
  } else if (pantalla == ("p3")) {
    Pant3();
  } else if (pantalla == ("p4")) {
    Pant4();
  } else if (pantalla == ("p5")) {
    Pant5();
    // PANTALLA DE CREDITOS
  } else if (pantalla == ("p6")) {
    Pant6();
  }
  //console.log("estado: "+pantalla);
}

function mousePressed() {
  EstadoMouse();
}

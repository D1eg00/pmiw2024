function EstadoMouse() {
  if (pantalla == "menu") {
    ChequeoDelBoton(posX1, posY1, "p1");
     ChequeoDelBoton(posX2, posY2, "p6");  // Botón hacia pantalla 6
  } else if (pantalla == "p1") {
    ChequeoDelBoton(posX1, posY1, "p2");
  } else if (pantalla == "p2") {
    ChequeoDelBoton(posX1, posY1, "p3");
  } else if (pantalla == "p3") {
    ChequeoDelBoton(posX1, posY1, "p4");
    ChequeoDelBoton(posX2, posY2, "p5");
  } else if (pantalla == "p4" || pantalla == "p5") {
    ChequeoDelBoton(posX1, posY1, "menu");
  } else if ( pantalla == "p6" ) {
    ChequeoDelBoton(posX1, posY1, "menu");
  }
}

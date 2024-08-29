// Función que retorna el color de la elipse basada en el estado
function getEllipseColor(ConClic) {
  if (ConClic) {
    return color(255); // Negro
  } else {
    return color(0); // Blanco
  }
}

// Función que no retorna valor = tipo void (Para dibujo)
function DibujoRect(x, y, lado) {
  stroke(1);
  rect(x, y, lado, lado);
}

// Función que no retorna valor = tipo void (Para Dibujar)
function DibujoEllipse(x, y, lado) {
  stroke(1);
  ellipse(x, y, lado / 2, lado / 2);
}

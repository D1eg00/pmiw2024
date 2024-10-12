
function dibujarBoton(x, y, label, AnchoyLargo, r, g, b) {
  if (dist(mouseX, mouseY, x + botT / 2, y + botT / 4) < botT / 2) {
    fill(r, g, b);
  } else {
    fill(r, g, b, 100);
  }
  rect(x, y, botT, botT / 2, 20);
  fill(255);
  text(label, x + botT / 2, y + botT / 4);
}
//detectarBoton
function detectarBoton(x, y, AnchoyLargo) {
  return mouseX > x && mouseX < x+AnchoyLargo && mouseY > y && mouseY < y+AnchoyLargo;
}
// ChequeoDelBoton
function ChequeoDelBoton(x, y, AnchoyLargo) {
  if (dist(mouseX, mouseY, x + botT / 2, y + botT / 4) < botT / 2) {
    pantalla = AnchoyLargo;
  }
}

/* Diego Miranda
 DNI 43102451
 lejago; 91378/5
 
 YouTube: https://www.youtube.com/watch?v=qzuClQ0TSb4
 
 Disculpe profe se me rompió mi auricular, tuve que usar de la laptop
 */

let cantidad = 20;
let lado;
let ConClic = true;

// Imagen
let img;

function preload() {
  // Cargar la imagen
  img = loadImage('data/obras1.png');
}


function setup() {
  createCanvas(800, 400);
  // Mostrar la imagen en el lienzo en la posición (0, 0)
  rectMode (CENTER);
}

function draw() {
  background(0); // Color del fondo
  lado = width/cantidad;
  image(img, 0, 0, width/2, height);

  // usar la función que retorna un valor para obtener el color de la elipse
  let currentColor = getEllipseColor (ConClic);
  fill(currentColor);

  // Ciclo for
  for ( let x = cantidad/2; x < cantidad; x++) {
    for (let y = 0; y < cantidad; y ++) {
      push();

      if (x % 2 == 0 && y % 2 != 0 && ConClic) {
        fill (225);
      } else {
        fill(0);
      }
      if (x % 2 != 0 && y % 2 == 0 && ConClic) {
        fill(255);
      }
      translate (x * lado, y * lado);
      DibujoRect (lado/2, lado/2, lado);
      pop();

      push();
      if (x % 2 == 0 && y % 2 != 0 && ConClic) {
        fill (0);
      } else {
        fill(255);
      }
      if (x % 2 != 0 && y % 2 == 0 && ConClic) {
        fill(0);
      }

      translate(x * lado, y * lado);
      rotate ( map ( width, 0, height, 0, PI*2 ));
      DibujoEllipse ( lado/2, lado/2, lado);

      pop();
    }
  }
}

function mousePressed() {
  // Al presionar el mouse cambia el estado con el isClicked
  ConClic = false;
  cantidad ++;
}

function keyPressed () {
  //Al presionar una tecla regresa al estado original
  ConClic = true;
  cantidad = 20;
}

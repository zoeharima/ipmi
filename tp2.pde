String texto1, texto2, texto3, texto4, texto5, texto6;
PImage imag1, imag2, imag3, imag4, imag5, imag6;
int miPantalla, miTiempo, pantallaAnterior, nuevaPantalla;
// Texto
float posX, posY, posZ;
PFont miFuente1, miFuente2, miFuente3;

void setup() {
  size(640, 480);
  imag1 = loadImage("1.png");
  imag2 = loadImage("4.png");
  imag3 = loadImage("3.png");
  imag4 = loadImage("2.png");
  imag5 = loadImage("Diseño sin título.png");
  imag6 = loadImage("Diseño sin título (1).png");

  // Fuente y texto
  miFuente1 = loadFont("Blackadder.vlw");
  miFuente2 = loadFont("ImprintMT-Shadow-48.vlw");
  miFuente3 = loadFont("ImprintMT-Shadow-48.vlw");

  texto1 = "Hola! Esta es mi presentacion\nStardew Valley!!";
  texto2 = "En este juego se puede personalizar\ntu propio personaje y granja!";
  texto3 = "Durante el juego van cambiando las estaciones";
  texto4 = "Hay cooperativo!";
  texto5 = "Gracias por su atencion";
  texto6 = "Podes interactuar con los aldeanos\ny conocer su historia";

  miPantalla = 0;
  miTiempo = 0;
  nuevaPantalla = -1;
  pantallaAnterior = -1;

  posX = width / 2;
  posY = 480;
  posZ = 0;
}

void draw() {
  background(255);
  miTiempo++;

  if (miTiempo < 300) nuevaPantalla = 0;
  else if (miTiempo < 600) nuevaPantalla = 1;
  else if (miTiempo < 900) nuevaPantalla = 2;
  else if (miTiempo < 1200) nuevaPantalla = 3;
  else if (miTiempo < 1500) nuevaPantalla = 4;
  else if (miTiempo < 1800) nuevaPantalla = 5;
    else if (miTiempo < 2100) nuevaPantalla = 6;

  // Cambiar pantalla y reiniciar animación
  if (nuevaPantalla != miPantalla) {
    posY = 480;
    posZ = 0;
    pantallaAnterior = miPantalla;
    miPantalla = nuevaPantalla;
  }

  // Presentaciones
  if (miPantalla == 0) {
    image(imag1, 0, 0, 640, 480);
    textFont(miFuente1);
    textSize(35);
    textAlign(CENTER, CENTER);
    fill(227, 178, 87);
    text(texto1, posX, posY);
    if (posY > 340) posY -= 2;

  } else if (miPantalla == 1) {
    image(imag2, 0, 0, 640, 480);
    textFont(miFuente2);
    textSize(25);
    fill(255);
    text(texto2, posX, posY);
    if (posY > 430) posY -= 2;

  } else if (miPantalla == 2) {
    image(imag3, 0, 0, 640, 480);
    textFont(miFuente2);
    textSize(25);
    fill(60, 87, 219);
    text(texto3, posZ, 330);
    if (posZ < 350) posZ += 2;

  } else if (miPantalla == 3) {
    image(imag4, 0, 0, 640, 480);
    textFont(miFuente3);
    textSize(40);
    fill(0);
    text(texto4, posX, posY);
    if (posY > 330) posY -= 2;

  } else if (miPantalla == 4) {
    image(imag6, 0, 0, 640, 480);
    textFont(miFuente1);
    textSize(40);
    fill(#4BFF05);
    text(texto6, posX, posY);
    if (posY > 350) posY -= 2;

  } else if (miPantalla == 5) {
    image(imag5, 0, 0, 640, 480);
    textFont(miFuente2);
    textSize(30);
    fill(0);
    textAlign(CENTER, CENTER);
    text(texto5, posX, posY);
    if (posY > 330) posY -= 2;
  }
    else if (miPantalla == 6) {
    image(imag5, 0, 0, 640, 480);

    // Botón "Reiniciar"
    if (mouseX > 250 && mouseX < 400 && mouseY > 170 && mouseY < 250) {
      fill(0, 255, 0);
    } else {
      fill(#CE9E00);
    }
    rect(250, 170, 150, 80);
    fill(0);
    textSize(20);
    text("Reiniciar", 325, 215);
  }
  }


void mousePressed() {
  if (miPantalla == 6) {
    if (mouseX > 250 && mouseX < 400 && mouseY > 170 && mouseY < 250) {
      miTiempo = 0;
      miPantalla = 0;
      nuevaPantalla = -1;
      pantallaAnterior = -1;
      posY = 480;
      posZ = 0;
  }
}
}

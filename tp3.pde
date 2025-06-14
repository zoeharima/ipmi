// video de youtube: https://youtu.be/Cis3KtdjCYI
//variables
PImage refe;
float xr, yr;
color c1, c2;
boolean activarefectotrans;
//donde le doy valor a las variables 
void setup() {
  size(800, 400);
  refe= loadImage("F_1.jpg");
  xr= 400/8;
  yr= 400/8;
  c1=color(255);
  c2=color(0);
  activarefectotrans=false;
}
//donde muestro todo 
void draw() {
  background(255);
  image(refe, 0, 0, 400, 400);
  noFill();
  cuadrados(xr, yr);
}
//funcion que dibuja(osea que no retorna valor)
void cuadrados(float xr, float yr) {
  //for (inicio, condicion, final) 
  for (int x=400; x<width; x+=xr) {
    for (int y=0; y<400; y+=yr) {
      //bolean para saber si es par la fila
      boolean esPar = esFilaPar(y, yr);
      //for para hacer el degrade y efecto de tranparencia. 
      for (int i = 0; i < xr; i++) {  
        float d= dist(mouseX, mouseY, x+i, y+yr/2);
        float efecto = map(i, 0, xr, 0, 1);
        color c = lerpColor(c1, c2, efecto);
        //condicional para los colores y el "degrade"
        if (esPar) {
          c = lerpColor(c1, c2, efecto);
        } else {
          c = lerpColor(c2, c1, efecto);
        }
        //si el boton del mouse iquierdo se pareta y se deja apretado se activa el true o false del bolean activar efecto transparente 
        if (mousePressed && mouseButton == LEFT) {
          activarefectotrans = true;
        } else {
          activarefectotrans = false;
        }
        rect(x, y, xr, yr);
        //aca es como darle un valor a una varieble que en todo caso seria el click del mouse llamado como activarefectotrans
        if (activarefectotrans) {
          stroke(c, map(d, 0, 400, 255, 50));
        } else {
          stroke(c);
        }
        line(x + i, y, x+ i, y + yr);
      }
    }
    if (mousePressed&&(mouseButton==RIGHT)) {
      c1 = color(random(255), random(255), random(255));
      c2 = color(random(255), random(255), random(255));
    }
    if (keyPressed&&key=='b') {
      c1= color(255);
      c2= color(0);
      xr= 400/8;
      yr= 400/8;
    }
  }
}
//funcion que retorna valor
boolean esFilaPar(float y, float altodfila) {
  return int(y / altodfila) % 2 == 0;
}

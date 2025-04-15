PImage trueno;

//solo aparece una vez 
void setup () { 
  size(800,400); 
  background (60);
  trueno = loadImage ("WhatsApp Image 2025-04-09 at 11.15.31.jpeg");
}
//aparece en loop (ponele)
void draw (){
  background(75); 
  image (trueno,0,0,400,400);
  //linea divisora 
  strokeWeight( 5 );
  line( 400, 0, 400, 400 );
  //sombra del autito
  noStroke();
  fill(40);
  quad(422,239,769,238,685,400,400,400);
  //rectangulo inferiror del auto 
  strokeWeight( 1 );
  fill (0);
 rect (421,190,350,55,10);
 //BLANCO DE LA PARTE DE ABAJO 
 fill(255);
 noStroke();
 rect (651,190,120,55,10);
  rect (550,190,120,10,10);
   rect (562,205,120,5,10);
    rect (570,215,120,5,10);
     rect (580,225,120,5,10);
      rect (590,235,120,5,10);
  //cual del 86 
  fill(0);
       rect (650,193,20,30);
       fill(255);
       rect (652,203,15,17);
  //cuad de los espejos y de las luces 
  fill(0);
  rect (762,183,10,15);
    fill(0);
  rect (630,173,20,15);
  //cuad de la ventana de atras
  fill(20);
 quad (124+400,155,31+400,189,145+400,192,155+400,151);
 //ventana
 fill(150);
 quad(146+400,159,124+400,161,62+400,183,139+400,183);
 //cuad de adelante
 fill(20);
  quad(155+400,152,209+400,152,258+400,189,147+400,194);
  //ventana 
  fill(150);
  quad(156+400,160,213+400,160,238+400,182,154+400,182);
//ruadas 
fill(50);
circle(94+400,234,50);
fill(50);
circle(314+400,234,50);
//textos 
fill(255);
text( "FALKEN", 429,200);
fill(255);
text( "TEIN", 548,239);
  fill(255,0,0);
       rect (522,190,25,10);
fill(255);
text( "drift", 522,197);
  }

//Ariadna Samira Tejeda Silva
//Legajo: 122917/6
//Comision: 3

PImage misfotos;
PImage misfotos1;                      
PImage misfotos2;
PImage misfotos3;
PImage misfotos4;
PImage misfotos5;
PImage misfotos6;

PFont fuente1;
PFont fuente2;
PFont fuente3;
PFont fuente4;
PFont fuente5;

int numeroPantalla;
int cronometro;

void setup() {
  size(640, 480);
  numeroPantalla = 0;
  cronometro = 0;
  frameRate(7.9);

//agregar otra fuente
fuente1 = loadFont("LetraLinda1.vlw");
fuente2 = loadFont("LetraLinda2.vlw");
fuente3 = loadFont("LetraLinda3.vlw");
fuente4 = loadFont("LetraLinda4.vlw");
fuente5 = loadFont("LetraLinda5.vlw");

misfotos = loadImage("tally0.jpg");
misfotos1 = loadImage("tally1.jpg");
misfotos2 = loadImage("tally2.jpg");
misfotos3 = loadImage("tally3.jpg");
misfotos4 = loadImage("tally4.jpg");
misfotos5 = loadImage("tally5.jpg");
misfotos6 = loadImage("tally6.jpg");
}

void draw() {
  background(255);
  cronometro++;

if (cronometro < 150) {
    numeroPantalla = 0;
}
else if (cronometro < 300) {
  numeroPantalla = 1;
} 
else if (cronometro < 450) {
  numeroPantalla = 2;
}
else if (cronometro < 600) {
  numeroPantalla = 3;
}
else if (cronometro < 750) {
  numeroPantalla = 4;
}
else if (cronometro < 900) {
  numeroPantalla = 5;
} 
else if (cronometro < 1050) {
  numeroPantalla = 6;
}

float textoAncho = width * 0.9;
float textoX = width * 0.05;

//portada
if (numeroPantalla == 0) {
 image(misfotos, 0, 0, width, height);
 textFont(fuente1);
 fill(254);
 textSize(30);
 float y = map(cronometro, 0, 150, height, height / 2);
 animacionTexto("Tally Hall: Música Diferente y Creativa", textoX, y, textoAncho);
}
 
//origen
else if (numeroPantalla == 1) {
 image(misfotos1, 0, 0, width, height);
 textFont(fuente1);
 fill(254);
 textSize(30);
 float x = map(cronometro, 150, 300, -textoAncho, textoX);
 animacionTexto("Tally Hall es una banda de Estados Unidos formada en 2002. Se hicieron conocidos por su estilo original y divertido.", x, height / 2 - 60, textoAncho);
} 

//estilo musical
else if (numeroPantalla == 2) {
 image(misfotos2, 0, 0, width, height);
 textFont(fuente2);
 fill(254);
 textSize(30);
 float y = map(cronometro, 300, 450, height, height / 2);
 animacionTexto("Su música mezcla rock, pop e indie con sonidos experimentales y letras creativas.", textoX, y, textoAncho);
}

//integrantes y corbatitas
else if (numeroPantalla == 3) {
 image(misfotos3, 0, 0, width, height);
 textFont(fuente3);
 fill(0);
 textSize(30);
 float y = map(cronometro, 450, 600, 0, height / 2);
 animacionTexto("Cada integrante usaba una corbata de distinto color para representar su personalidad dentro de la banda.", textoX, y, textoAncho);
}

//albun
else if (numeroPantalla == 4) {
 image(misfotos4, 0, 0, width, height);
 textFont(fuente4);
 fill(0);
 textSize(30);
 float x = textoX + sin(cronometro * 0.1) * 20;
 animacionTexto("Su álbum más famoso es Marvins Marvelous Mechanical Museum, muy reconocido por su estilo único.", x, height / 2 - 60, textoAncho);
}

//cancion conocida
else if (numeroPantalla == 5) {
 image(misfotos5, 0, 0, width, height);
 textFont(fuente5);
 fill(255);
 textSize(30);
 float y = height / 2 - 60 + cos(cronometro * 0.1) * 20;
 animacionTexto("Canciones como Ruler of Everything y Hidden in the Sand ayudaron a que la banda se vuelva popular en internet. ", textoX, y, textoAncho);
} 

//volve tally ;(
else if (numeroPantalla == 6) {
 image(misfotos6, 0, 0, width, height);
 textFont(fuente1);
 fill(0);
 textSize(30);
 float x = map(cronometro, 900, 1050, width, textoX);
 animacionTexto("Aunque la banda estuvo inactiva varios años, todavía tiene muchos fans en todo el mundo.", x, height / 2 - 60, textoAncho);


//botoncito
//cambiar por rectangulo
float bx = width - 60;
float by = height - 60;
float br = 50;

if (dist(mouseX, mouseY, bx, by) < br / 2) {
  fill(255, 100, 100);
} 

else {
  fill(200);
}

ellipse(bx, by, br, br);
fill(0);
textAlign(CENTER, CENTER);
textSize(12);
text("Reiniciar", bx, by);
 }
}

//la funsion propia 
void animacionTexto(String contenido, float posX, float posY, float anchoMax) {
  text(contenido, posX, posY, anchoMax, 200);
}

void mousePressed() {
  if (numeroPantalla == 6) {
    float bx = width - 60;
    float by = height - 60;
    float br = 50;
    
    if (dist(mouseX, mouseY, bx, by) < br / 2) {
      cronometro = 0;
      numeroPantalla = 0;
    }
  }
}

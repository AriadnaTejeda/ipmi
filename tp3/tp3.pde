//Ariadna Samira Tejeda Silva
//Legajo: 122917/6
//Comi:3
//Link al video de youtube:


PImage img;
int cantidadAnillos = 4;
int[] cuadradosPorAnillo = {18, 30, 42, 56}; 
float radioInicial = 55.0;
float separacionAnillos = 40.0;
float tamCuadrado = 13.0;
float rotacionGlobal = 0.0;
int estadoAnimacion = 0;
float velocidadRotacion = 0.0;
int modoColor = 0;
color colorFondo = color(128, 128, 128);
color colorClaro, colorOscuro;

void setup() {
  size(800, 400);
  img = loadImage("cuadraditos.jpg");
  imageMode(CORNER);
  rectMode(CENTER);
  noFill();
  strokeWeight(1.6);
  colorMode(HSB, 800, 400, 800, 255);
  reiniciarValores();
}

void draw() {
  background(colorFondo);
  image(img, 0, 0, 400, 400);
  

  //funciona si el mouse esta en la mitad derecha
  boolean enMitadDerecha = mouseX > 400 && mouseX <= 800;

  if (enMitadDerecha) {
    estadoAnimacion = 1;
    // si el cursor esta mas a la derecha = velocidad positiva o normal
    // si esta mas a la izquierda de la zona = velocidad negativa o contraria
    velocidadRotacion = map(mouseX, 400, 800, -0.022, 0.022);
  } else {
    //si pasa a la mitad izquierda se detiene
    estadoAnimacion = 0;
    velocidadRotacion = 0.0;
  }

  pushMatrix();
  translate(600, height / 2);

  if (estadoAnimacion == 1) {
    rotacionGlobal += velocidadRotacion;
  }

  //dibujo de anillos con giro alternado
  for (int anillo = 0; anillo < cantidadAnillos; anillo++) {
    float radioActual = radioInicial + anillo * separacionAnillos;
    int cantidadFiguras = cuadradosPorAnillo[anillo];
    // Cambiado: radians(360) es lo mismo que TWO_PI
    float anguloPaso = radians(360) / cantidadFiguras;

    float rotacionAnillo = rotacionGlobal * ((anillo % 2 == 0) ? 1 : -1);

    pushMatrix();
    rotate(rotacionAnillo);

    for (int i = 0; i < cantidadFiguras; i++) {
      float angulo = i * anguloPaso;
      float x = radioActual * cos(angulo);
      float y = radioActual * sin(angulo);

      color tono = calcularTono(i, anillo);
      dibujarCuadrado(x, y, tamCuadrado, tono, i, anillo);
    }

    popMatrix();
  }

  popMatrix();
}

//no retorna valor
void dibujarCuadrado(float posX, float posY, float tam, color tono, int indice, int anillo) {
  pushMatrix();
  translate(posX, posY);
  float anguloBase = atan2(posY, posX);
  float anguloExtra = ((indice + anillo) % 2 == 0) ? radians(10) : radians(20);
  rotate(anguloBase + anguloExtra);
  stroke(tono);
  rect(0, 0, tam, tam);
  popMatrix();
}

//retorna valor
color calcularTono(int indice, int anillo) {
  if ((indice + anillo) % 2 == 0) {
    return colorClaro;
  } else {
    return colorOscuro;
  }
}

//se reiniciar todo al estadp inicial
void reiniciarValores() {
  rotacionGlobal = 0.0;
  estadoAnimacion = 0;
  velocidadRotacion = 0.0;
  modoColor = 0;
  setColores();
}

//colorsitos
void setColores() {
  if (modoColor == 0) {
    colorClaro = color(0, 0, 800);   // Blanco
    colorOscuro = color(0, 0, 0);    // Negro
  } else if (modoColor == 1) {
    colorClaro = color(200, 150, 750);
    colorOscuro = color(230, 300, 250);
  } else if (modoColor == 2) {
    colorClaro = color(140, 180, 780);
    colorOscuro = color(180, 280, 220);
  } else if (modoColor == 3) {
    colorClaro = color(30, 200, 780);
    colorOscuro = color(10, 320, 240);
  } else if (modoColor == 4) {
    colorClaro = color(280, 170, 760);
    colorOscuro = color(320, 300, 230);
  }
}

//hacer click en zona derecha cambia el  color
void mousePressed() {
  if (mouseX > 400 && mouseX <= 800) {
    modoColor = (modoColor + 1) % 5;
    setColores();
  }
}

//la tecla r lo reinicia y el espacio lo pausa
//revisar bien esto
void keyPressed() {
  if (key == 'r' || key == 'R') {
    reiniciarValores();
  }
  if (key == ' ') {
    estadoAnimacion = (estadoAnimacion == 1) ? 0 : 1;
  }
}

PImage ben101, ben102, ben103;
int segundos= 0;
int estado= 0;
int posX2, posX3, posX4;
int px, py, ancho, alto;
int posX = 200;
boolean inicio, reinicio;
PFont mifuente;
void setup() {
  size(640, 480);
  textAlign(CENTER, CENTER);
mifuente = loadFont("mifuente.vlw");
  textFont(mifuente, 20);
posX2 = 1100;
posX3 = -200;
posX4 = 1100;
px = 420;
py = 420;
ancho = 200;
alto = 50;
  ben101 = loadImage("ben10.png");
  ben102 = loadImage("ben102.png");
  ben103 = loadImage("ben103.png");
}

void draw() {
  if (inicio == true) {
    if (frameCount%60==0) {
      segundos ++;
    }
  }
  if (estado==0) {
    image(ben101, 0, 0, 640, 480);
  }
  if (segundos<= 0) {
    fill(0);
    rect(px, py, ancho, alto);
    fill(250);
    textSize(38);
    text("INICIAR", 520, 445);
  } else if ( segundos>0 && segundos<= 8) {
     fill(0,0,255);
    text("BEN 10 ES UNA SERIE ANIMADA \n QUE SIGUE LAS AVENTURAS \n DE BEN TENNYSON, UN NIÑO \n DE 10 AÑOS QUE ENCUENTRA \n UN MISTERIOSO RELOJ", posX2, height/2);
  }
  if (posX2>width/2) {
    posX2 = posX2 -3;
  }
  if (estado==1) {
    image(ben102, 0, 0, 640, 480);
    fill(0,0,255);
    text("ESTE DISPOSITIVO SE \n LLAMA OMNITRIX, \n LE PERMITE TRANSFORMARSE  \n EN DIEZ DIFERENTES \n ALIENIGENAS, CADA UNO CON \n HABILIDADES UNICAS", width/2, posX3);
    if (posX4>width/2) {
      posX3 = posX3 +2;
    }
  }
  if (estado==2) {

    image(ben103, 0, 0, 640, 480 );
  }
  if (segundos<=8) {
    estado = 0;
    if (segundos<=0) {
      if (mouseX>220 && mouseX <420 && mouseY>419 && mouseY<470 ) {
        fill(0, 0, 0, 200);
      } else {
        fill(0, 0, 0, 100);
      }
    }
  } else if (segundos>8 && segundos<= 16) {
    estado = 1;
  } else if (segundos>16) {
    estado = 2;
     fill(0,0,255);
   text(" JUNTO A SU PRIMA GWEN Y\n SU ABUELO MAX, \n BEN VIAJA POR \n ESTADOS UNIDOS \n EN UN VERANO  \n LLENO DE ACCION ", posX4, height/2);
    if (posX4>-1000) {
      posX4 = posX4 -2;
    }
  }
  if (segundos>27) {
    fill(255);
    rect(px, py, ancho, alto);
    fill(0);
    textSize(32);
    text("REINICIO", 520, 445 );
  }
}
void mousePressed() {
  if (mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto) {
    posX += 10;
    inicio = true;
  }
  if (mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto) {
    segundos = 0;
    reinicio = true;
    posX2 = 1100;
    posX3 = -200;
    posX4 = 1100;
  }
}

//https://youtu.be/dFHJ00B7g7U
PImage inicio, instrucciones, fondo, PATO, ganaste, perdiste, creditos;
PFont berlin;
String estado;
int PAuto, PAuto2, PAuto3, PPatoX, PPatoY, puntos, PAutoD, PAutoD2, PAutoD3, cont, r ;
float  PezX;
;
PImage[] autoiz = new PImage[3];
PImage[] autode = new PImage[3];
PImage[] pez = new PImage[5];
void setup() {
  size(800, 600);
  PAuto= 0;
  PAuto2= -250;
  PAuto3= -400;
  PAutoD= 550;
  PAutoD2= 800;
  PAutoD3= 1000;
  PPatoX= 400;
  PPatoY= 500;
  puntos =0;
  cont=0;
  r=60;


  PezX= random (800);

  PATO = loadImage("pato.png");
  inicio = loadImage("inicio1.png");
  estado = "inicio";
  instrucciones = loadImage("instrucciones.png");
  fondo = loadImage("fondo.png");
  ganaste = loadImage("ganaste.png");
  perdiste = loadImage("perdiste.png");
  creditos = loadImage("creditos.png");
  berlin = loadFont("Berlin.vlw");
  for ( int i = 0; i < autode.length; i++ ) {
    autode[i] = loadImage( "autode"+i+".png" );
  }
  for ( int i = 0; i < autoiz.length; i++ ) {
    autoiz[i] = loadImage( "autoiz"+i+".png" );
  }
  for ( int i = 0; i < pez.length; i++ ) {
    pez[i] = loadImage( "pez"+i+".png" );
  }
}

void draw() {
  // INICIO
  if ( estado.equals("inicio") ) { 
    image (inicio, -20, 0);
    // instrucciones
  } else if ( estado.equals("instrucciones") ) {
    image (instrucciones, 0, 0);   
    // JUEGO
  } else if ( estado.equals("juego") ) {
    cont++;
    image (fondo, 0, 0);
    autos();
    puntos(  600, 50, 30);
    peces();
    colision();
    //PATO
    image (PATO, PPatoX, PPatoY);
  }
  if ( estado.equals("juego") && PPatoY< 50 ) {
    estado.equals("ganaste");
    image (ganaste, 0, 0);
    puntos(  450, 330, 50);
  }

  if ( estado.equals("perdiste")  ) {

    image (perdiste, 0, 0);
    puntos(  450, 330, 50);
  }
}


// rect( 300,320,200,80); medida del boton



void mouseClicked() {
  if ( estado.equals("inicio") && mouseX >= 300 &&  mouseY >= 320 &&  mouseX <= 300+200 &&  mouseY <= 320+80);
  {
    estado = "instrucciones";
  }
}
void keyPressed() {
  if (key =='w' ) {
    PPatoY-= 50;
    puntos+=10;
  }
  if (key =='s' ) {
    PPatoY += 50;
  }
  if (key == 'a' ) {
    PPatoX -= 50 ;
  }
  if (key == 'd' ) {
    PPatoX += 50 ;
  }
  if (key == 'c' ) {
    estado = "juego";
  }
  if (key == 'i' ) {
    estado = "inicio";
      PAuto= 0;
  PAuto2= -250;
  PAuto3= -400;
  PAutoD= 550;
  PAutoD2= 800;
  PAutoD3= 1000;
  PPatoX= 400;
  PPatoY= 500;
  puntos =0;
  }
  if (key == 't' ) {
    estado = "creditos";
    image (creditos, 0, 0);
  }
}
void autos() {
  //AUTOS IZ

  image(autoiz [0], PAuto++, 350 );
  if (cont >= 50) {
    image(autoiz [1], PAuto2++, 350 );
    if (cont >= 100 ) {
      image(autoiz [2], PAuto3++, 350 );
    }
    if (PAuto> 800) {
      PAuto= 0;
    }
    if (PAuto2> 800) {
      PAuto2= -200;
    }
    if (PAuto3> 800) {
      PAuto3= -300;
    }
    //AUTOS DER
    image(autode [0], PAutoD--, 200 );
    if (cont >= 50 ) {
      image(autode [1], PAutoD2--, 200 );
      if (cont >= 100 ) {
        image(autode [2], PAutoD3--, 200 );
      }
    }
  }

  if (PAutoD < 0) {
    PAutoD= 550;
  }
  if (PAutoD2< 0) {
    PAutoD2= 750;
  }
  if (PAutoD3< 0) {
    PAutoD3= 950;
  }
}
void puntos(int x, int y, int t) {
  textFont(berlin);
  textSize(t);
  fill(255, 230, 20);
  text( "Puntaje:" +puntos, x, y);
}
void peces() {
  image(pez [0], PezX, 100 );
  image(pez [1], PezX *2, 150 );
  image(pez [2], PezX+10, 70 );
  image(pez [3], PezX *2, 100 );
  image(pez [4], PezX-30, 150 );
  if (dist(PPatoX, PPatoY, PezX, 100) <= r) {
    puntos+=30;
  } else if (dist(PPatoX, PPatoY, PezX *2, 150) <= r) {
    puntos+=30;
  } else if (dist(PPatoX, PPatoY, PezX+10, 70) <= r) {
    puntos+=30;
  } else if (dist(PPatoX, PPatoY, PezX *2, 100) <= r) {
    puntos+=30;
  } else if (dist(PPatoX, PPatoY, PezX-30, 150 ) <= r) {
    puntos+=30;
  }
}

void colision() {
  if (dist(PPatoX, PPatoY, PAutoD--, 200) <= 60) {
    estado="perdiste";
  } else if (dist(PPatoX, PPatoY, PAutoD2--, 200) <= r) {
    estado="perdiste";
  } else if (dist(PPatoX, PPatoY, PAutoD3--, 200) <= r) {
    estado="perdiste";
  } else if (dist(PPatoX, PPatoY, PAuto++, 350) <= r) {
    estado="perdiste";
  } else if (dist(PPatoX, PPatoY, PAuto2++, 350) <= r) {
    estado="perdiste";
  } else if (dist(PPatoX, PPatoY, PAuto3++, 350) <= r) {
    estado="perdiste";
  }
}

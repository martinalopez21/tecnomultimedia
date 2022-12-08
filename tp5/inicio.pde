class Inicio {

  String puntaje = ("Puntos:");
  String vidas = ("vidas:");
  String texto= ("Presione la letra i para volver al inicio.");
  PFont fuente;
  String estado, estado2;
  boolean choque, recolectar;
  PImage fondo, principal, ganaste, perdiste, creditos, reiniciar;
  int puntos, a, b, vida, u, xmax, xmin, ymax, ymin;
  Personaje personaje ;
  Caramelo[] caramelos;
  Caramelo[] caramelos1;

  Tumba[] tumbas;


  Inicio () {
    a= 0;
    b= mouseY;
    u=1;
    xmax=900;
    xmin=80;
    ymax= 500;
    ymin=280;



    personaje= new Personaje ( b, a++); //PERSONAJE
    estado = "inicio";
    //IMAGENES
    principal= loadImage ("inicio.png"); 
    fondo= loadImage ("fondo.png");
    ganaste= loadImage ("ganaste.png"); 
    perdiste= loadImage ("perdiste.png"); 
    creditos= loadImage ("credito.png"); 
    //VALOR VARIABLES
    puntos=0;
    vida=3;
    fuente= loadFont ("letra.vlw");

    //TUMBAS 
    tumbas= new Tumba [3];
    for (int i=0; i< tumbas.length; i++) {

      float yr=450- 100*i;
      float xr= 600- 200*i;


      tumbas[i]=new Tumba(xr, yr);
    }
    //CARAMELOS 
    caramelos= new Caramelo [3];
    for (int i=0; i< caramelos.length; i++) {

      float yr=ymax- 115*i;
      float xr= xmax- 200*i;

      caramelos[i]=new Caramelo(xr, yr);
    }

    caramelos1= new Caramelo [3];
    for (int i=0; i< caramelos.length; i++) {

      float yr= 90*i+ymin ;
      float xr=120*i+ xmin ;
      caramelos1[i]=new Caramelo(xr, yr);
    }
  }
  void dibujar() {
    //FONDOS Y ESTADOS

    principal.resize (900, 600);
    image (principal, 0, 0); 
    println(recolectar);

    b=mouseY;


    if (estado== "jugar") {   //ESTADO JUGAR

      fondo.resize (900, 600);
      image (fondo, 0, 0); 
      textFont(fuente);
      textSize(25);
      text (puntaje+puntos, 30, 100);
      text (vidas+vida, 230, 100);




      personaje.dibujar(a++, b);
    }
    if (estado=="ganaste") {   //GANAR
      ganaste.resize (900, 600);
      image (ganaste, 0, 0);
    }
    if (estado=="perdiste") {  //PERDER
      perdiste.resize (900, 600);
      image (perdiste, 0, 0);
    }
  }


  void constTumbas() {
    if (estado== "jugar") {
      for (int i=0; i< tumbas.length; i++) {
        tumbas[i].dibujar();
        if (dist (personaje.returnX(), personaje.returnY(), tumbas[i].returnX(), tumbas[i].returnY()) <= 20 && choque == false) {
          vida-=1;
          player1.play(3);
          choque = true;
          tumbas[i]= new Tumba(2000, 2000);
          ;
        }
        if (dist (personaje.returnX(), personaje.returnY(), tumbas[i].returnX(), tumbas[i].returnY()) >= 20 && choque == true) {
          choque = false;
        }
      }
    }
  }


  void constCaramelos() {
    if (estado== "jugar") {
      for (int i=0; i< caramelos.length; i++) {
        caramelos[i].dibujar();

        if (dist (personaje.returnX(), personaje.returnY(), caramelos[i].returnX(), caramelos[i].returnY())<= 20 && recolectar == false) {
          recolectar = true;
          puntos+=1;
          player2.play(3);
          caramelos[i]= new Caramelo(2000, 2000);
          ;
        }
        if (dist (personaje.returnX(), personaje.returnY(), caramelos[i].returnX(), caramelos[i].returnY()) >= 20 && recolectar == true) {
          recolectar = false;
        }
      }
      //caramelos1
      for (int i=0; i< caramelos.length; i++) {
        caramelos1[i].dibujar();
        if (dist (personaje.returnX(), personaje.returnY(), caramelos1[i].returnX(), caramelos1[i].returnY())<= 20 && recolectar == false) {
          puntos =+u;
          recolectar = true;
          puntos+=1;
          caramelos1[i]= new Caramelo(2000, 2000);
          player2.play(3);
        }
        if (dist (personaje.returnX(), personaje.returnY(), caramelos1[i].returnX(), caramelos1[i].returnY()) >= 20 && recolectar == true) {
          recolectar = false;
        }
      }
    }
  }

  void estados() {
    if (mousePressed && estado== "inicio" ) {
      estado= "jugar" ;
    }
    if (a >= 900) {
      estado="ganaste";
      a=0;
    }
    if (  mousePressed && estado=="ganaste") {
      estado="creditos";
    }
    if (estado=="perdiste" && mousePressed) {
      estado="creditos";
      vida=3;
    }

    if (estado=="creditos" && key=='i') {
      estado="inicio";
    }
  }


  void perder() {

    if (vida == 0) {
      estado="perdiste";
    }
  }
  void creditos() {
    if (estado=="creditos") {
      creditos.resize (900, 600);
      image (creditos, 0, 0); 
      text (texto, 50, 550);
      puntos=0;
      vida=3;
      a= 0;
      b= mouseY;
    }
  }
  void reiniciar() {
    if (estado == "inicio") {
      puntos=0;
      vida=3;
      a= 0;
      b= mouseY;
      //TUMBAS 
      tumbas= new Tumba [3];
      for (int i=0; i< tumbas.length; i++) {

        float yr=450- 100*i;
        float xr= 600- 200*i;


        tumbas[i]=new Tumba(xr, yr);
      }
      //CARAMELOS 
      caramelos= new Caramelo [3];
      for (int i=0; i< caramelos.length; i++) {

        float yr=ymax- 115*i;
        float xr= xmax- 200*i;

        caramelos[i]=new Caramelo(xr, yr);
      }

      caramelos1= new Caramelo [3];
      for (int i=0; i< caramelos.length; i++) {

        float yr= 90*i+ymin ;
        float xr=120*i+ xmin ;
        caramelos1[i]=new Caramelo(xr, yr);
      }
    }
  }
}

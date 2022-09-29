class Cuaderno {
  Gatos gatos1;
  Gatos gatos2;
  Gatos gatos0;
  Perros perros1;
  Perros perros2;
  Perros perros0;

  PImage c;


  Cuaderno() {

    gatos1= new Gatos (1, 10, 460); 
    gatos2= new Gatos (2, 140, 460 ); 
    gatos0= new Gatos (0, 270, 460); 

    perros1= new Perros(1, 400, 460); 
    perros2= new Perros(2, 520, 460); 
    perros0= new Perros(0, 650, 460); 

    c= loadImage ("cuaderno.png");
  }
  void dibujar() {
    c.resize (800, 600);
    image (c, 0, 0);
    gatos1.dibujar();
    gatos2.dibujar();
    gatos0.dibujar();
    perros1.dibujar();
    perros2.dibujar();
    perros0.dibujar();

    //perros.dibujar();
  }
  void actualizar() {
    gatos0.moverConDrag();
    gatos0.actualizar();
    gatos1.moverConDrag();
    gatos1.actualizar();
    gatos2.moverConDrag();
    gatos2.actualizar();
    perros1.moverConDrag();
    perros1.actualizar();
    perros2.moverConDrag();
    perros2.actualizar();
    perros0.moverConDrag();
    perros0.actualizar();
  }
  void reiniciar() {
    if (keyPressed ) {
      gatos1= new Gatos (1, 10, 460); 
      gatos2= new Gatos (2, 140, 460 ); 
      gatos0= new Gatos (0, 270, 460); 

      perros1= new Perros(1, 400, 460); 
      perros2= new Perros(2, 520, 460); 
      perros0= new Perros(0, 650, 460);
    }
  }
}

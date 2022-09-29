class Gatos {
  int q, x, y;
  PImage[] gatito = new PImage[3];

  boolean drag, estoyDentro;


  Gatos(int q_,int  x_, int y_) {
    q= q_;
    x= x_;
    y= y_;
    for ( int i = 0; i < gatito.length; i++ ) {
      gatito[i] = loadImage( "gatito"+i+".png" );
    }

  }
  void dibujar() {
    gatito[q].resize (140, 140);
    image (gatito[q], x, y);
 

  }
   void actualizar(){
    if( mousePressed ){
      drag = true;
    }else{
      drag = false;
    }
    
   if ( (mouseX > x )&&  (mouseY > y) && ( mouseX < (x + 140)) &&  (mouseY < (y + 140))){ 
      estoyDentro = true;

    } else{
      estoyDentro = false;
    
   }
   
   }
void moverConDrag(){
    if( drag && estoyDentro ){
      x = mouseX-70;
      y = mouseY-70;
    }
}

}

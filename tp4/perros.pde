class Perros {
    int q, x, y;
  PImage[] perrito = new PImage[3];
  boolean drag, estoyDentro;

  Perros(int q_,int  x_, int y_) {
    q= q_;
    x= x_;
    y= y_;
    for ( int i = 0; i < perrito.length; i++ ) {
      perrito[i] = loadImage( "perrito"+i+".png" );
    }

  }
    void dibujar() {
  perrito[q].resize (140,135);
   image (perrito[q], x, y);
 
}
void actualizar(){
    // 1) aqui actualizo la variable drag
    if( mousePressed ){
      drag = true;
    }else{
      drag = false;
    }
    
    // 2) aqui actualizo la variable estoyDentro
   if ( (mouseX > x )&&  (mouseY > y) && ( mouseX < (x + 140)) &&  (mouseY < (y + 135))){ 
      estoyDentro = true;

    } else{
      estoyDentro = false;
    
   }
   println( "drag: " + drag );
    println( "estoyDentro: " + estoyDentro );
   }
void moverConDrag(){
    // 3) ejecuto el movimiento a partir de drag y estoyentro
    if( drag && estoyDentro ){
      x = mouseX-70;
      y = mouseY-70;
    }
}

}

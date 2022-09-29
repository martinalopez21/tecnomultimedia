//Martina López Com2 Legajo:84520/0
//https://youtu.be/tRhK3iC5S2w 
Cuaderno cuaderno;
void setup() {
size(800, 600);
cuaderno= new Cuaderno(); 
}

void draw(){
  
cuaderno.actualizar();
cuaderno.dibujar();
cuaderno.reiniciar();
}

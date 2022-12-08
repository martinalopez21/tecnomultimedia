//Martina López 84520/0 Tecno 1 Com2 2022 TP5
// https://youtu.be/XwKk5VNvubA
import ddf.minim.*;  
Minim minim;
AudioPlayer player;
AudioPlayer player1;
AudioPlayer player2;
Personaje personaje;
Inicio inicio;
void setup() {
  size (900, 600);
  inicio= new Inicio();
  minim= new Minim (this);
  player= minim.loadFile("sonido.wav");
  player1= minim.loadFile("choque.mp3");
  player2= minim.loadFile("punto.mp3");
}
void draw() {
  inicio.dibujar();
  inicio.estados();
  inicio.perder();
  inicio.creditos();

  player.play();

  inicio.constTumbas();
  inicio.constCaramelos();
  inicio.reiniciar();
}

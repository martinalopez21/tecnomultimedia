// video de YouTube; https://youtu.be/-l7ts_ukv7Q
int cant =20;
int ub;
float tam;
void setup() {
  size(500, 500);
  ub = width/cant;
  tam = random(20, ub);
  rectMode(CENTER);
}
void draw() {
  background(0);
tam = random(2, ub);    
for (int x=0; x<cant; x++) {
 for (int y =0; y<cant; y++) {
if ((x+y)%2==0) {
 fill(5,255,255);
 } else {
 noStroke();
 fill(255,255,5);
}
 rect(x*ub+ub/2, y*ub+ub/2, tam, tam);
}
}
fill(255,5,255,220);
ellipse(250,250,width++,height++); 
 }
void mousePressed() {
width=0;
height = 0;
}

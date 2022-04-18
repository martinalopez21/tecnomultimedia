//Martina López 84520/0 Com2
void setup() {
 size(400,400);
 background(220,250,255);

}
void draw(){
 noStroke();
fill(255);
ellipse(200,160,100,100); //cabeza
ellipse(200,260,160,160);//cuerpo
fill(0);
rect(140,100,120,20);//GORRO
rect(160,40,80,60);//GORRO
ellipse(200,240,10,10);//boton
ellipse(200,260,10,10);//boton
ellipse(200,280,10,10);//boton
ellipse(180,140,10,10);//ojo
ellipse(220,140,10,10);//ojo
fill(255,150,0);//naranja
triangle(200,140, 200, 160, 260,180);// nariz
fill(0);
ellipse(180,180,6,6);//boca
ellipse(200,190,6,6);//boca
fill(0);
ellipse(220,180,6,6);//boca

fill(30,190,100);
triangle(  80,340, 100, 320, 120,340);//piso
triangle(  100,340, 120, 320, 140,340);//piso
triangle(  120,340, 140, 320, 160,340);//piso
triangle(  140,340, 160, 320, 180,340);//piso
triangle(  160,340, 180, 320, 200,340);//piso
triangle(  180,340, 200, 320, 220,340);//piso
triangle(  200,340, 220, 320, 240,340);//piso
triangle(  220,340, 240, 320, 260,340);//piso
triangle(  240,340, 260, 320, 280,340);//piso
triangle(  260,340, 280, 320, 300,340);//piso
triangle(  280,340, 300, 320, 320,340);//piso
strokeWeight(8); 
stroke(160,180,240);
fill(220,230,255, 95); //CELESTE 90
ellipse(200,200,360,360); //ESFERA
strokeWeight(5); 
stroke(230,210,70);
fill(255,0,0);
triangle( 0,400, 100,350, 200,400);//base
 triangle(  200,400, 300, 350, 400,400);//base
triangle( 100,350, 200,400, 300, 350);//base MEDIO
fill(230,210,70); //dorado
rect(80,340,240,20);//base





}

PImage fondo, titulo, gato1;
PFont fuente1;
int PY, PX, OP1, OP2,OP3,TAM1,TAM2;
String t1 = ("Mia Wasikowska");
String t2 = ("Johnny Depp");
String t3 = ("Helena Bonham Carter");
String t4 = ("Anne Hathaway");
String t5 = ("Crispin Glover");
String t6 = ("Matt Lucas");
String t7 = ("Alan Rickman");
String t8 = ("Stephen Fry");
String t9 = ("Michael Sheen");
String t10 = ("Paul Whitehouse");
String t11 = ("Barbara Windsor");
String t12 = (" directed by Tim Burton");

//________SETUP__________________________________________________________
void setup(){
size (600,400);
fondo= loadImage("fondo.png");
titulo= loadImage("titulo.png");
gato1= loadImage("gato1.png");
fuente1= loadFont ("fuente1.vlw"); 
PY = 10;
PX = 300;

OP1=0;
OP2=1;
OP3=2;
TAM1=10;
TAM2=30;

}
//____DRAW______________________________________________________________
void draw(){
 background(00); 
 if(frameCount >= 2 && frameCount < 200 ){
  tint(OP1++);
image (titulo, 0, 50);
 }
if (OP1 >= 250){
   OP1=250;
 }
//____IF_FONDO______________________________________
  if ( frameCount >= 277 ) {
 tint(OP2++);
 image (fondo, 0, 0);
 }


//____IF_FONDO_OP2______________________________________
 if (OP2 >= 250){
   OP2=250;
}
println(frameCount);

//____TEXTO______________________________________
if(frameCount > 500){
 textAlign(CENTER);
textFont(fuente1);
textSize(TAM1++);
text (t1, PX, PY++);
text (t2, PX, PY-100);
text (t3, PX, PY-200);
text (t4, PX,PY-300);
text (t5, PX, PY-400);
text (t6, PX, PY-500);
text (t7, PX, PY-600);
text (t8, PX, PY-700);
text (t9, PX, PY-800); 
text (t10, PX, PY-900);
text (t11, PX, PY-1000);
text (t12, PX, PY- 1300); 
}
 if (TAM1 > TAM2){
   TAM1-- ;
 }

   
 
if(frameCount > 1970){
  tint(OP3);
image (gato1, 0, 0);
}
}
void mouseDragged(){
 if ( mouseX >= 50 &&  mouseY >= 50 &&  mouseX <= 550 &&  mouseY <= 350 && frameCount > 1970){
  OP3++;
 } else {
      OP3=0;

 }
 if (OP3 >= 250){
   OP3=250;
}
}

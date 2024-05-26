int miVariable = 100;
int posX = 200;
int pestaña = 1, contador;
float miRect = random(10, 100);
String texto1 = "SUPERCAMPEONES, \n creado por";
PImage Imagen1;
PImage Imagen2;

void setup() {
size(640, 480);
textSize(50);
background(0);
contador = 0;
imagen1 = loadImage("imagen1.jpg");
imagen2 = loadImage("imagen2.jpg");

}


void draw() {
background(0,0);
contador++;
miVariable = frameCount / 2;
miRect = random(10, 180);
printIn(miVariable);
fill(200, 0, 0, 200);
if(pestaña == 1) {
image(imagen1,0, 0, width, height);
fill(200, 0, 0, 200);
fill(0);
text(texto1, miVariable, 200);
}else if(pestaña == 2){
  image(imagen2, 0, 0, width, height);
  fill(255);
  text("es una serie sobre futbol", miVariable, 50);
}else if(pestaña == 3) {
  background(0, 0, 255);
  fill(0);
  text("fue lanzado en el año", 100, 200);
}
fill(0);
text (pestaña, mouseX, mouseY);
if (franeCount % 180 == 0){
contador ++;
 if (contador > 3)
 {
   contador = 0;
   if (pestaña != 3){
     pestaña++;
   }
 }
}
}
void mouseClicked(){
  pestaña = pestaña + 1;
  if (pestaña == 4){
    pestaña = 1;
  }
}

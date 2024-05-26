int estado;
PImage img1;
PImage img2;
PImage img3;


PFont Jose;

String texto1;
String texto2;
String texto3;

void setup(){
size (640,480);
estado=0;

img1= loadImage("img1.jpg");
img2= loadImage("img2.jpg");
img3= loadImage("img3.jpg");


Jose= loadFont("Jose.vlw");
textFont (Jose);
textAlign(CENTER,TOP);

texto1= "Little Nightmares es un videojuego de rompecabezas y \n horror de supervivencia desarrollado por \n Tarsier Studios"; 
texto2= "Una hambrienta niña de nueve años llamada Six es secuestrada \n en Las Fauces, un misterioso barco \n de abastecimiento para el capricho de locas y poderosas criaturas. Después de despertar en las \n profundidades más bajas de Las Fauces, Six decide escapar de los confines \n duros, teniendo momentos regulares de hambre insoportable"; 
texto3= "Little Nightmares recibió críticas generalmente positivas \n según el agregador de reseñas de videojuegos \n Metacritic.Cory Arnold dijo en Destructoid Little Nightmares me hipnotizó con un suspenso \n omnipresente, y le otorgó una puntuación de 8.5/10";
}

void draw(){
println(mouseX+" a "+mouseY+" a "+estado+" a "+frameCount/60);

if(estado==0){ 
image(img1,0,0,640,480);
textSize(15);
fill(150,50,160);
text(texto1,320,frameCount/1.5);

if(frameCount/60>=8){
estado=1;
frameCount=1;
}
}

if(estado==1){ 
image(img2,0,0,640,480);
textSize(15);
fill(150,50,160);
text(texto2,320,frameCount/1.5);

if(frameCount/60>=8){
estado=2;
frameCount=1;
}
}
if(estado==2){ 
image(img3,0,0,640,480);
textSize(15);
fill(150,50,160);
text(texto3,320,frameCount/1.5);

if(frameCount/60>=8){
estado=3;
frameCount=1;

textSize(15);
    fill(255, 255, 255);
    text("Restart", width - 50, height - 20);
}
}
}
void mouseClicked(){

  if (estado == 3 && mouseX > width - 100 && mouseY > height - 50) {
    estado = 0;
    frameCount = 0;
  }
}

//Tp2 Proga
//Fernando Dominguez 120297/1

PFont fuente;
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
int estado ;
String texto1;
String texto2;
String texto3;
String texto4;
String texto5;
 //
void setup(){
  background(0);

  size (640,480);
   estado =1 ;
fuente =loadFont("BellMTBold-48.vlw");
textFont(fuente);
 textAlign( CENTER, CENTER );
  textSize(32);
  println(frameCount);
  //cargar imagen
 img1 =loadImage("primerafoto.jpg");
 img2 =loadImage("segundafoto.jpg");
 img3 =loadImage("terceraimagen.jpg");
 img4 =loadImage("cuartaimagen.jpg");
 img5 =loadImage("quintaimagen.jpg");

   texto1 ="Erased es una aclamada serie de manga de misterio y ciencia ficción escrita e ilustrada por Kei Sanbe, que además cuenta con una popular adaptación al anime y una serie de acción real";
   texto2="La historia sigue a Satoru Fujinuma, un autor de manga frustrado de 29 años que posee una habilidad involuntaria llamada Regresion.";
   texto3="Este poder lo envía unos minutos atrás en el tiempo para evitar tragedias locales.";
   texto4="Sin embargo, tras el asesinato de su madre a manos de un criminal desconocido, su habilidad lo transporta repentinamente 18 años al pasado, a su época de escuela primaria en 1988";
   texto5="FINAL\ntocar para reiniciar";
  //asignacionde estado 
  estado=1;
}

  void draw(){
    println(frameCount/60+"/"+mouseX+"/"+mouseY);

     //estados 
   if (estado ==1){
     image(img1,0,0,640,480);

     text(texto1,120,100-frameCount/2, 440, 200);

     if(frameCount/60>=5){
       frameCount=0;
       estado=2;

     }
   }

if(estado ==2){
     image(img2,0,0,640,480);
     text(texto2,120,100-frameCount/-2, 440, 200);

     if(frameCount/60>=5){
       frameCount=0;
       estado=3;

     }
   }

     if(estado ==3){
     image(img3,0,0,640,480);
    text(texto3,120,100-frameCount/1, 440, 200);

     if(frameCount/60>=4){
       frameCount=0;
       estado=4;


     }
   }

     if(estado ==4){
     image(img4,0,0,640,480);
     text(texto4,120,100-frameCount/1, 440, 200);
     fill(0);
     if(frameCount/60>=5){
       frameCount=0;
       estado=5;

     } 
   }
     
  if(estado ==5){
 image(img5,0,0,640,480);

 fill(255);
 text(texto5,320,240);
}
     
     
    

}
void mousePressed(){

  if(estado == 5){
    frameCount = 0;
    estado = 1;
  }

}

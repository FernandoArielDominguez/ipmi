// TP2
// Fernando Dominguez 120297/1
PFont fuente;
PImage img1,img2,img3,img4,img5;

int estado=1;
int inicioEstado=0;

String texto1,texto2,texto3,texto4,texto5;

void setup(){
  size(640,480);

  fuente=loadFont("BellMTBold-48.vlw");
  textFont(fuente);
  textAlign(CENTER,CENTER);
  textSize(24);

  img1=loadImage("primerafoto.jpg");
  img2=loadImage("segundafoto.jpg");
  img3=loadImage("terceraimagen.jpg");
  img4=loadImage("cuartaimagen.jpg");
  img5=loadImage("quintaimagen.jpg");

  texto1="Erased es una aclamada serie de manga de misterio y ciencia ficción escrita e ilustrada por Kei Sanbe, que además cuenta con una popular adaptación al anime y una serie de acción real.";
  texto2="La historia sigue a Satoru Fujinuma, un autor de manga frustrado de 29 años que posee una habilidad involuntaria llamada Regresión.";
  texto3="Este poder lo envía unos minutos atrás en el tiempo para evitar tragedias locales.";
  texto4="Sin embargo, tras el asesinato de su madre a manos de un criminal desconocido, su habilidad lo transporta repentinamente 18 años al pasado.";
  texto5="FINAL";

  inicioEstado=frameCount;
}

void draw(){
  background(0);

  if(estado==1){
    image(img1,0,0,640,480);
    mostrarTexto(texto1,120,100-(frameCount-inicioEstado)/2,440,200);
    cambiarEstado(2,300);
  }
  else if(estado==2){
    image(img2,0,0,640,480);
    mostrarTexto(texto2,120,100+(frameCount-inicioEstado)/2,440,200);
    cambiarEstado(3,300);
  }
  else if(estado==3){
    image(img3,0,0,640,480);
    mostrarTexto(texto3,120,100-(frameCount-inicioEstado),440,200);
    cambiarEstado(4,240);
  }
  else if(estado==4){
    image(img4,0,0,640,480);
    mostrarTexto(texto4,120,100+(frameCount-inicioEstado),440,200);
    cambiarEstado(5,300);
  }
  else if(estado==5){
    image(img5,0,0,640,480);
    fill(255);
    text(texto5,320,220);

 
    if(estado==5 && mouseX>220){
      textSize(18);
      text("Click para reiniciar",320,420);
      textSize(24);
    }

  
    if(mouseX<100 || mouseY<100){
      ellipse(mouseX,mouseY,8,8);
    }
  }
}

void mostrarTexto(String txt,float x,float y,float w,float h){
  fill(255);
  text(txt,x,y,w,h);
}

void cambiarEstado(int nuevoEstado,int frames){
  if(frameCount-inicioEstado>=frames){
    estado=nuevoEstado;
    inicioEstado=frameCount;
  }
}

void mousePressed(){
  if(estado==5){
    estado=1;
    inicioEstado=frameCount;
  }
}

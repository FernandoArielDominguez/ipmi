PImage foto;

void setup (){
  size(800,400);
  foto = loadImage ("paisaje.jpg");

  background(0); 
  
}


void draw (){
triangle(467,219,537,112,569,219);
  //calle
fill(#696E6F); 
rect(560,220,100,450); 

//palos
fill(#6F4D03);
rect(535,220,10,500);
rect(672,220,10,500);


//lineas calle
fill(#FAFFFF);
rect(605,380,10,100);
fill(#FAFFFF);
rect(605,350,10,20);
fill(#FAFFFF);
rect(605,320,10,20);
fill(#FAFFFF);
rect(605,290,10,20);
fill(#FAFFFF);
rect(605,260,10,20);
fill(#FAFFFF);
rect(605,230,10,20);
noStroke();

//cielo
fill(#85BFFC,100);
rect(300,0,500,220);

//montañas
triangle(467,219,537,112,569,219);
stroke(40);
fill(#4D4545);
triangle(375,219,519,159,525,219);
stroke(40);
fill(#4D4545);
triangle(467,219,537,112,569,219);
stroke(40);
fill(#4D4545);
triangle(548,219,599,112,672,219);
stroke(40);
fill(#4D4545);
triangle(725,219,756,190,769,219);
stroke(40);
fill(#4D4545);
triangle(769,219,799,192,900,219);
stroke(40);
fill(#4D4545);

fill(255,200);
noStroke();
ellipse(769,104,50,50);
ellipse(740,104,50,50);
ellipse(769,120,50,50);
ellipse(789,104,50,50);
ellipse(720,104,50,50);
ellipse(769,90,50,50);
ellipse(769,150,50,50);
ellipse(789,170,50,50);
ellipse(769,1,50,50);
ellipse(789,150,50,50);
ellipse(769,104,100,100);
ellipse(719,104,100,100);
ellipse(622,59,100,100);
ellipse(666,85,100,100);
ellipse(749,35,70,70);
ellipse(795,37,70,70);
ellipse(695,164,70,70);
ellipse(739,163,50,50);
ellipse(530,70,100,100);
ellipse(459,57,80,80);
ellipse(412,91,100,100);

ellipse(557,14,100,100);
ellipse(449,162,50,50);
ellipse(432,140,50,50);
ellipse(471,109,100,100);
ellipse(769,104,50,50);
ellipse(769,104,50,50);
ellipse(769,104,50,50);
ellipse(769,104,50,50);
ellipse(769,104,50,50);
ellipse(769,104,50,50);
ellipse(769,104,50,50);
ellipse(769,104,50,50);
ellipse(769,104,50,50);
ellipse(769,104,50,50);












image (foto, 0, 0, 400, 400);


  
  
println("X:");
println(mouseX);

println("Y:");
println(mouseY);
  
  
  
 
}

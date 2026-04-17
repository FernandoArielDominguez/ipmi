PImage miImagen;

void setup(){
size(800,400);
miImagen = loadImage("tp.jpg");

}


void draw(){
background(0);
 image(miImagen, 0, 0, 400, 400);

//pelo
fill(250,250,0);
ellipse(630,45,80,40);
ellipse(620,95,150,100);



//cara
fill(226, 196, 172);
ellipse(600, 150, 190, 150);
noStroke();
triangle(570, 180, 600, 275,700,275);
fill(163,162,160);
ellipse(661, 218, 30, 30);


//cinta
fill(0, 0, 250);
noStroke();
rect(535, 70, 150, 70);
ellipse(535,105,70,70);

triangle(500,114,500,137,535,137);




//cuerpo
fill(88,41,0);
rect(542, 270, 205, 200);
triangle(542,270,483,407,542,400);
fill(80,40,0);
triangle(540,270,747,232,747,270);
fill(255);
triangle(560,265,746,220,746,244);
 
 fill(0,0,255);
triangle(665,40,800,244,671,248);
fill(250,250,0);
triangle(665,40,795,230,670,244);

//ojos nariz boca
fill(255);
ellipse(605,157,50,20);
ellipse(530,157,50,20);
fill(0);
ellipse(617,157,20,20);
ellipse(543,157,20,20);

fill(255,0,0);
ellipse(561,193,30,5);
ellipse(561,198,30,10);
fill(226, 196, 172);
stroke(10);
triangle(565, 163, 554,181,573,181);







fill(0);
textSize(30);
text(mouseX + "-" + mouseY, mouseX, mouseY);
}

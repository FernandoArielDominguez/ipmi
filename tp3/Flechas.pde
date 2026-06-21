void dibujarFlecha(float x, float y, boolean izquierda, float angulo, color c) {
  pushMatrix();
  translate(x, y);

  if (izquierda) rotate(PI);
  rotate(angulo);

  noStroke();
  fill(c);

  beginShape();
  vertex(-26, 0);
  vertex(-8, -16);
  vertex(-8, -8);
  vertex(16, -8);
  vertex(16, 8);
  vertex(-8, 8);
  vertex(-8, 16);
  endShape(CLOSE);

  popMatrix();
}

boolean vaALaIzquierda(int fila) {
  return (fila % 4 == 0 || fila % 4 == 3);
}

float rotacionMouse(float x, float y) {
  float d = dist(mouseX, mouseY, x, y);
  return (d < 90) ? map(d, 0, 90, 0.22, 0) : 0;
}

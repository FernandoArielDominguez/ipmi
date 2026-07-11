void dibujarFlecha(float x, float y, boolean izquierda, float angulo) {

  pushMatrix();

  translate(x, y);

  if (izquierda) {
    rotate(PI);
  }

  rotate(angulo);

  noStroke();
  fill(colorFlechas);

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

  if (fila % 4 == 0 || fila % 4 == 3) {
    return true;
  } else {
    return false;
  }

}

float rotacionMouse(float x, float y) {

  float d = dist(mouseX, mouseY, x, y);

  if (d < 90) {
    return map(d, 0, 90, 0.22, 0);
  } else {
    return 0;
  }

}

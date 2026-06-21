// TP3 Fernando Dominguez 120297/1
// https://youtu.be/3FkbUhHvsRo
void draw() {
  background(140, 0, 200);

  image(imagen, 0, 0, width/2, height);

  stroke(255);

  for (int fila = 0; fila < filas; fila++) {
    for (int col = 0; col < columnas; col++) {

      float x = width/2 + 30 + col * separacionX;
      float y = 42 + fila * separacionY;

      boolean izquierda = vaALaIzquierda(fila);
      float angulo = rotacionMouse(x, y);

      dibujarFlecha(x, y, izquierda, angulo, coloresGrid[col][fila]);
    }
  }
}

void mousePressed() {

  float[] distancias = new float[filas * columnas];
  int[] cols = new int[filas * columnas];
  int[] filasI = new int[filas * columnas];

  int n = 0;

  for (int fila = 0; fila < filas; fila++) {
    for (int col = 0; col < columnas; col++) {

      float x = width/2 + 30 + col * separacionX;
      float y = 42 + fila * separacionY;

      distancias[n] = dist(mouseX, mouseY, x, y);
      cols[n] = col;
      filasI[n] = fila;

      n++;
    }
  }

  for (int i = 0; i < 4; i++) {
    int fle = i;

    for (int j = i + 1; j < n; j++) {
      if (distancias[j] < distancias[fle]) {
        fle = j;
      }
    }

    float td = distancias[i];
    distancias[i] = distancias[fle];
    distancias[fle] = td;

    int tc = cols[i];
    cols[i] = cols[fle];
    cols[fle] = tc;

    int tf = filasI[i];
    filasI[i] = filasI[fle];
    filasI[fle] = tf;

    coloresGrid[cols[i]][filasI[i]] =
      color(random(255), random(255), random(255));
  }
}

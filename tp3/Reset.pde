void keyPressed() {
  if (key == 'r' || key == 'R' || key == ' ') {
    reiniciarColores();
  }
}

void reiniciarColores() {

  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      coloresGrid[i][j] = color(220, 255, 0);
    }
  }
}

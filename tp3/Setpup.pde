void setup() {
  size(800, 400);
  imagen = loadImage("tp.jpeg");

  coloresGrid = new color[columnas][filas];
  reiniciarColores();
}

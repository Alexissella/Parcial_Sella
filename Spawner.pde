class Spawner {
  float x;
  float velocidadX;
  
  Spawner() {
    x = random(width);
    velocidadX = random(1, 3);
  }
  
  Moneda crearMoneda() {
    return new Moneda(x);
  }
  
  void mover() {
    x += velocidadX;
    if (x > width || x < 0) {
      velocidadX *= -1;
    }
  }
}

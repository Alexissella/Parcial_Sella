class ObjetoCayendo {
  protected float x, y;
  protected float velocidadY;
  protected float tamano;
  
  ObjetoCayendo(float xInicial) {
    x = xInicial;
    y = 0;
    velocidadY = random(2, 5);
    tamano = random(10, 20);
  }
  
  void mover() {
    y += velocidadY;
  }
  
  boolean haTocadoFondo(float alturaPantalla) {
    return y > alturaPantalla;
  }
}

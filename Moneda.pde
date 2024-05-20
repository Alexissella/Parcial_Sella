class Moneda extends ObjetoCayendo {
  
  Moneda(float xInicial) {
    super(xInicial);
  }
  
  void mostrar() {
    fill(255, 223, 0); // Color dorado
    noStroke();
    ellipse(x, y, tamano, tamano);
  }
}

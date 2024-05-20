class Juego {
  int score = 0;
  ArrayList<Moneda> monedas;
  Spawner spawner;
  PImage fondo; // Declaración de la variable para almacenar la imagen de fondo
  int intervalo = 20; // Intervalo de tiempo para crear nuevas monedas
  int tiempoActual = 0; // Contador de tiempo
  
  Juego() {
    monedas = new ArrayList<Moneda>();
    spawner = new Spawner();
  }
  
  void setup() {
    fondo = loadImage("fondo.jpeg"); // Carga la imagen de fondo desde el archivo "fondo.jpg"
    size(fondo.width, fondo.height); // Establece el tamaño de la ventana según las dimensiones de la imagen de fondo
  }
  
  void actualizar() {
    background(fondo); 
    
    // Crear nuevas monedas a intervalos regulares
    if (millis() - tiempoActual > intervalo) {
      monedas.add(spawner.crearMoneda());
      tiempoActual = millis();
    }
    
    // Actualizar y mostrar todas las monedas
    for (int i = monedas.size() - 1; i >= 0; i--) {
      Moneda m = monedas.get(i);
      m.mover();
      m.mostrar();
      // Verificar si la moneda ha tocado el fondo
      if (m.haTocadoFondo(height)) {
        score++; // Incrementar el puntaje
        monedas.remove(i); // Eliminar la moneda
      }
    }
    
    // Mostrar el puntaje en la pantalla
    fill(255);
    textSize(32);
    text("Score: " + score, 10, 40);
    
    // Actualizar la posición del spawner
    spawner.mover();
  }
}

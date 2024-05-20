import controlP5.*;

Juego juego;
PImage fondo;
ControlP5 cp5; 
int joystickX, joystickY; 
boolean startPressed = false; // Variable para controlar si se ha presionado el botón de inicio
boolean gameStarted = false; // Variable para controlar si el juego ha iniciado

void setup() {
  fondo = loadImage("fondo.jpeg"); 
  size(600, 600); 
  
  juego = new Juego();
  juego.setup(); 
  
  cp5 = new ControlP5(this);
  
  cp5.addGroup("joystick")
     .setPosition(450, 450)
     .setSize(150, 150);
  
  cp5.addButton("arriba")
     .setPosition(475, 430)
     .setSize(50, 30)
     .setGroup("joystick");
  
  cp5.addButton("abajo")
     .setPosition(475, 500)
     .setSize(50, 30)
     .setGroup("joystick");
  
  cp5.addButton("izquierda")
     .setPosition(450, 465)
     .setSize(30, 50)
     .setGroup("joystick");
  
  cp5.addButton("derecha")
     .setPosition(520, 465)
     .setSize(30, 50)
     .setGroup("joystick");
}

void draw() {
  background(255);
  
  fill(200);
  ellipse(joystickX, joystickY, 20, 20);
  
  if (startPressed) {
    if (!gameStarted) {
      // Mostrar mensaje en medio de la pantalla
      fill(0);
      textSize(20); // Tamaño de texto reducido
      textAlign(CENTER, CENTER);
      text("Presiona A para comenzar", width / 2, height / 2);
    } else {
      // Iniciar el juego
      juego.actualizar();
    }
  }
}

void arriba() {
  joystickY -= 10; 
}

void abajo() {
  joystickY += 10; 
}

void izquierda() {
  joystickX -= 10; 
}

void derecha() {
  joystickX += 10; 
}

void keyPressed() {
  if (key == 'a') {
    startPressed = true;
    gameStarted = true;
  }
}

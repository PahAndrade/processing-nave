Nave n1, n2;

// roda uma vez soh, quando inicia o programa
// deve ser utilizada para configuracoes (e.g., o tamanho da 
// tela e inicializar variaveis
void setup() {
  // em p5.js => createCanvas(...);
  size(640, 480);
  noCursor();
  n1 = new Nave(320, 240, 0, 0, 255);
  n2 = new Nave(0, 240, 30, 0, 255, 0);
}

// eh executada aproximadamente 60 vezes por segundo,
// toda vez que a tela for redesenhada
void draw() {
  background(0);
  // 320, 240
  n1.atualizaPosicao(mouseX, mouseY);
  n2.moveEmFrente();
  n1.desenha();
  n2.desenha();
}

void keyPressed() {
  if (keyCode == UP) {
    n2.acelera();
  } else if (keyCode == DOWN) {
    n2.freia();
  } else if (keyCode == LEFT) {
    n2.giraSentidoAntiHorario();
  } else if (keyCode == RIGHT) {
    n2.giraSentidoHorario();
  }
}
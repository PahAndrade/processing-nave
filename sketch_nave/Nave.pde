class Nave {
  
  PVector _posicao;
  PVector _direcao;
  int _velocidade;
  
  int _tam = 25;
  
  int _r = 255, _g = 255, _b = 255;
  
  public Nave(int x, int y, int r, int g, int b) {
    _posicao = new PVector(x, y);
    _direcao = new PVector(1, 0);
    _velocidade = 1;
    _r = r;
    _g = g;
    _b = b;
  }
  
  public Nave(int x, int y, int tam, int r, int g, int b) {
    _posicao = new PVector(x, y);
    _direcao = new PVector(1, 0);
    _velocidade = 0;
    _tam = tam;
    _r = r;
    _g = g;
    _b = b;
  }
  
  public void desenha() {
    pushMatrix();
    translate(_posicao.x, _posicao.y);
    rotate(_direcao.heading());
    fill(_r, _g, _b);
    // triangle(_posicao.x, _posicao.y - _tam, _posicao.x + _tam, _posicao.y + _tam, _posicao.x - _tam, _posicao.y + _tam);
    triangle(_tam, 0, -_tam, _tam, -_tam, -_tam);
    // fill(255);
    // ellipse(_posicao.x, _posicao.y, 1, 1);
    popMatrix();
  }
  
  public void atualizaPosicao(int x, int y) {
    _posicao.x = x;
    _posicao.y = y;
  }
  
  public void moveEmFrente() {
    _posicao.add(PVector.mult(_direcao, _velocidade));
  }
  
  public void acelera() {
    _velocidade++;
  }
  
  public void freia() {
    if (_velocidade > 0) _velocidade--;
  }
  
  public void giraSentidoAntiHorario() {
    _direcao.rotate(-PI/16);
  }
  
  public void giraSentidoHorario() {
    _direcao.rotate(PI/16);
  }
  
}
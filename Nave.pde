class Nave {
  
  PVector _posicao;
  PVector _direcao;
  int _velocidade;
  
  int _tam = 25;
  
  int _r = 255, _g = 255, _b = 255;
  
  public Nave(int x, int y, int r, int g, int b) {
    _posicao = new PVector(x, y);
    _direcao = new PVector(0, -1);
    _velocidade = 1;
    _r = r;
    _g = g;
    _b = b;
  }
  
  public Nave(int x, int y, int tam, int r, int g, int b) {
    _posicao = new PVector(x, y);
    _direcao = new PVector(0, -1);
    _velocidade = 1;
    _tam = tam;
    _r = r;
    _g = g;
    _b = b;
  }
  
  public void desenha() {
    pushMatrix();
    translate(_posicao.x, _posicao.y);
    rotate(_direcao.heading() + PConstants.HALF_PI);
    fill(_r, _g, _b);
    triangle(0, -_tam, _tam, _tam, - _tam, _tam);
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
  
  public void viraSentAntiHorario() {
    _direcao.rotate(-PConstants.PI / 32);
  }
  
  public void viraSentHorario() {    
    _direcao.rotate(PConstants.PI / 32);
  }
  
}
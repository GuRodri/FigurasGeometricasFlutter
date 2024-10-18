import 'dart:math';

class Cubo {
  //1. Declarar os atributos da classe Cubo
  double aresta;
  //double ladoB;
  

  //2. Declaração do construtor com parâmetros.
  Cubo(this.aresta);


  //3. Método para Calcular a área do Cubo
  num area(){
    return 6*(pow(aresta, 2));
  }

  //3. Método para Calcular o volume do Cubo
  num volume(){
    return pow(aresta, 3);
  }

}
import 'dart:math';

class Hexagono {
  //1. Declarar os atributos da classe hexagono
  double lado;
  

  //2. Declaração do cosntrutor com parâmetros.
  Hexagono(this.lado);


  //3. Método para Calcular a área do Hexagono
  double area(){
    return (3*(pow(lado,2))*sqrt(3)/2);
  }

  //3. Método para Calcular o perímetro do Hexagono
  double perimetro(){
    return 6*lado;
  }

}
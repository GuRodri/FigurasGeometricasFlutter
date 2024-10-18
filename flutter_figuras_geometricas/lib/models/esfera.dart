import 'dart:math';

class Esfera {
  //1. Declarar os atributos da classe Esfera
  double raio;
  //double ladoB;
  

  //2. Declaração do construtor com parâmetros.
  Esfera(this.raio);


  //3. Método para Calcular a área do Esfera
  double area(){
    return 4*pi*(pow(raio, 2));
  }

  //3. Método para Calcular o volume do Esfera
  double volume(){
    return (4*pi*(pow(raio, 3)))/3;
  }

}
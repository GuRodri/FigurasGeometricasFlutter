import 'dart:math';

class Circulo {
  //1. Declarar os atributos da classe circulo
  double raio;
  //double ladoB;
  

  //2. Declaração do construtor com parâmetros.
  Circulo(this.raio);


  //3. Método para Calcular a área do circulo
  double area(){
    return 3.14* (raio * raio);
  }

  //3. Método para Calcular o perímetro do circulo
  double perimetro(){
    return 2*pi*raio;
  }

}
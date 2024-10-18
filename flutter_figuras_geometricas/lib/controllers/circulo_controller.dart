

import 'package:flutter_figuras_geometricas/models/circulo.dart';

class CirculoController {
  //1. Declarar o objeto quadrado da classe Circulo.
  Circulo? circulo;

  //2. Definir as dimensões do circulo.
  void setDimensoes(double raio) {
    circulo = Circulo(raio);
  }

  //3. Método do Controller: getArea() que faz a chamada do método
  // da classe Circulo.
  double getArea(){
    return circulo?.area() ?? 0;
  }

  //4. Método do Controller: getPerimetro() que faz a chamada
  // do metodo perimetro da classe Circulo
  double getPerimetro() {
    return circulo?.perimetro() ?? 0;
  }
}
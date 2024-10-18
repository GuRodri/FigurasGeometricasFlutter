

import 'package:flutter_figuras_geometricas/models/quadrado.dart';

class QuadradoController {
  //1. Declarar o objeto quadrado da classe Quadrado.
  Quadrado? quadrado;

  //2. Definir as dimensões do quadrado.
  void setDimensoes(double a) {
    quadrado = Quadrado(a);
  }

  //3. Método do Controller: getArea() que faz a chamada do método
  // da classe Quadrado.
  double getArea(){
    return quadrado?.area() ?? 0;
  }

  //4. Método do Controller: getPerimetro() que faz a chamada
  // do metodo perimetro da classe Quadrado
  double getPerimetro() {
    return quadrado?.perimetro() ?? 0;
  }
}
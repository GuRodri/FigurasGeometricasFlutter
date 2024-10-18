
import '../models/cubo.dart';

class CuboController {
  //1. Declarar o objeto quadrado da classe Cubo
  Cubo? cubo;

  //2. Definir as dimensões do Cubo.
  void setDimensoes(double aresta) {
    cubo = Cubo(aresta);
  }

  //3. Método do Controller: getArea() que faz a chamada do método
  // da classe Cubo
  num getArea(){
    return cubo?.area() ?? 0;
  }

  //4. Método do Controller: getPerimetro() que faz a chamada
  // do metodo perimetro da classe Cubo
  num getVolume() {
    return cubo?.volume() ?? 0;
  }
}
import '../models/retangulo.dart';

class RetanguloController {
  //1. Declarar o objeto retangulo da classe Retangulo.
  Retangulo? retangulo;

  //2. Definir as dimensões do retângulo. a = altura e b = base.
  void setDimensoes(double a, double b) {
    retangulo = Retangulo(a, b);
  }

  //3. Método do Controller: getArea() que faz a chamada do método
  // da classe Retangulo.
  double getArea(){
    return retangulo?.area() ?? 0;
  }

  //4. Método do Controller: getPerimetro() que faz a chamada
  // do metodo perimetro da classe Retangulo
  double getPerimetro() {
    return retangulo?.perimetro() ?? 0;
  }
}
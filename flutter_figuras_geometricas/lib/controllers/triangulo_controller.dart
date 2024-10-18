
import '../models/triangulo.dart';

class TrianguloController {
  //1. Declarar o objeto retangulo da classe Triangulo.
  Triangulo? triangulo;

  //2. Definir as dimensões do triangulo.
  void setDimensoes(double base, double altura, double lado) {
    triangulo = Triangulo(base, altura, lado);
  }

  //3. Método do Controller: getArea() que faz a chamada do método
  // da classe Triangulo.
  double getArea(){
    return triangulo?.area() ?? 0;
  }

  //4. Método do Controller: getPerimetro() que faz a chamada
  // do metodo perimetro da classe Triangulo
  double getPerimetro() {
    return triangulo?.perimetro() ?? 0;
  }
}
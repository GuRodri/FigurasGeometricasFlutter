
import '../models/hexagono.dart';

class HexagonoController {
  //1. Declarar o objeto retangulo da classe Hexagono.
  Hexagono? hexagono;

  //2. Definir as dimensões do hexagono
  void setDimensoes(double lado) {
    hexagono = Hexagono(lado);
  }

  //3. Método do Controller: getArea() que faz a chamada do método
  // da classe Hexagono.
  double getArea(){
    return hexagono?.area() ?? 0;
  }

  //4. Método do Controller: getPerimetro() que faz a chamada
  // do metodo perimetro da classe Hexagono
  double getPerimetro() {
    return hexagono?.perimetro() ?? 0;
  }
}
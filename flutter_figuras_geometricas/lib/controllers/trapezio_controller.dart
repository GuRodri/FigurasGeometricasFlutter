
import '../models/trapezio.dart';

class TrapezioController {
  //1. Declarar o objeto retangulo da classe Trapezio.
  Trapezio? trapezio;

  //2. Definir as dimensões do trapezio.
  void setDimensoes(double Bmaior, double Bmenor, double altura, double ladoA, double ladoB) {
    trapezio = Trapezio(Bmaior, Bmenor, altura, ladoA, ladoB);
  }

  //3. Método do Controller: getArea() que faz a chamada do método
  // da classe Trapezio.
  double getArea(){
    return trapezio?.area() ?? 0;
  }

  //4. Método do Controller: getPerimetro() que faz a chamada
  // do metodo perimetro da classe Trapezio
  double getPerimetro() {
    return trapezio?.perimetro() ?? 0;
  }
}

import '../models/losango.dart';

class LosangoController {
  //1. Declarar o objeto retangulo da classe Losango.
  Losango? losango;

  //2. Definir as dimensões do losango.
  void setDimensoes(double Dmaior, double Dmenor, double lado) {
    losango = Losango(Dmaior, Dmenor, lado);
  }

  //3. Método do Controller: getArea() que faz a chamada do método
  // da classe Losango.
  double getArea(){
    return losango?.area() ?? 0;
  }

  //4. Método do Controller: getPerimetro() que faz a chamada
  // do metodo perimetro da classe Losango
  double getPerimetro() {
    return losango?.perimetro() ?? 0;
  }
}
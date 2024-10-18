
import '../models/paralelogramo.dart';

class ParalelogramoController {
  //1. Declarar o objeto retangulo da classe paralelogramo.
  Paralelogramo? paralelogramo;

  //2. Definir as dimensões do paralelogramo. 
  void setDimensoes(double base, double altura) {
    paralelogramo = Paralelogramo(base, altura);
  }

  //3. Método do Controller: getArea() que faz a chamada do método
  // da classe paralelogramo
  double getArea(){
    return paralelogramo?.area() ?? 0;
  }

  //4. Método do Controller: getPerimetro() que faz a chamada
  // do metodo perimetro da classe paralelogramo
  double getPerimetro() {
    return paralelogramo?.perimetro() ?? 0;
  }
}
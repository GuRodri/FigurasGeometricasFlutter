
import '../models/esfera.dart';

class EsferaController {
  //1. Declarar o objeto quadrado da classe Esfera
  Esfera? esfera;

  //2. Definir as dimensões do esfera.
  void setDimensoes(double raio) {
    esfera = Esfera(raio);
  }

  //3. Método do Controller: getArea() que faz a chamada do método
  // da classe Esfera
  double getArea(){
    return esfera?.area() ?? 0;
  }

  //4. Método do Controller: getPerimetro() que faz a chamada
  // do metodo perimetro da classe Esfera
  double getVolume() {
    return esfera?.volume() ?? 0;
  }
}
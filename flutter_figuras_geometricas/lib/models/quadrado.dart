class Quadrado {
  //1. Declarar os atributos da classe quadrado
  double ladoA;
  

  //2. Declaração do cosntrutor com parâmetros.
  Quadrado(this.ladoA);


  //3. Método para Calcular a área do quadrado
  double area(){
    return ladoA * ladoA;
  }

  //3. Método para Calcular o perímetro do quadrado
  double perimetro(){
    return 4*ladoA;
  }

}
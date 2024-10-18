class Losango {
  //1. Declarar os atributos da classe losango
  double Dmaior;
  double Dmenor;
  double lado;

  //2. Declaração do cosntrutor com parâmetros.
  Losango(this.Dmaior, this.Dmenor, this.lado);


  //3. Método para Calcular a área do losango
  double area(){
    return (Dmaior * Dmenor)/2;
  }

  //3. Método para Calcular o perímetro do losango
  double perimetro(){
    return 4*lado;
  }

}
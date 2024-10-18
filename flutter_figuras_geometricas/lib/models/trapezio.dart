class Trapezio {
  //1. Declarar os atributos da classe trapezio
  double Bmaior;
  double Bmenor;
  double altura;
  double ladoA;
  double ladoB;

  //2. Declaração do cosntrutor com parâmetros.
  Trapezio(this.Bmaior, this.Bmenor, this.altura, this.ladoA, this.ladoB);


  //3. Método para Calcular a área do  trapezio
  double area(){
    return ((Bmaior + Bmenor)/2)*altura;
  }

  //3. Método para Calcular o perímetro do trapezio
  double perimetro(){
    return Bmaior+Bmenor+ladoA+ladoB;
  }

}
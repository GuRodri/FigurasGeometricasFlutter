class Triangulo {
  //1. Declarar os atributos da classe triangulo
  double base;
  double altura;
  double lado;
 
  //2. Declaração do cosntrutor com parâmetros.
  Triangulo(this.base, this.altura, this.lado);


  //3. Método para Calcular a área do triangulo
  double area(){
    return (base * altura)/2;
  }

  //3. Método para Calcular o perímetro do triangulo
  double perimetro(){
    return 3*lado;
  }

}
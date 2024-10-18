class Retangulo {
  //1. Declarar os atributos da classe retangulo
  double altura;
  double base;

  //2. Declaração do cosntrutor com parâmetros: altura e base.
  Retangulo(this.altura, this.base);


  //3. Método para Calcular a área do retângulo
  double area(){
    return altura * base;
  }

  //3. Método para Calcular o perímetro do retângulo
  double perimetro(){
    return 2*(altura + base);
  }

}
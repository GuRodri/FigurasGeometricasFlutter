class Paralelogramo {
  //1. Declarar os atributos da classe paralelogramo
  double base;
  double altura;

  //2. Declaração do cosntrutor com parâmetros.
  Paralelogramo(this.base, this.altura);


  //3. Método para Calcular a área do  paralelogramo
  double area(){
    return base * altura;
  }

  //3. Método para Calcular o perímetro do paralelogramo
  double perimetro(){
    return 2*base + 2*altura;
  }

}
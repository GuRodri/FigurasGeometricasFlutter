import 'package:flutter/material.dart';
import 'package:flutter_figuras_geometricas/views/entrada_circulo.dart';
import 'package:flutter_figuras_geometricas/views/entrada_paralelogramo.dart';

import '../views/entrada_cubo.dart';
import '../views/entrada_esfera.dart';
import '../views/entrada_hexagono.dart';
import '../views/entrada_losango.dart';
import '../views/entrada_quadrado.dart';
import '../views/entrada_retangulo.dart';
import '../views/entrada_trapezio.dart';
import '../views/entrada_triangulo.dart';


class FigurasGeometricasPage extends StatelessWidget {
   FigurasGeometricasPage({super.key});

  //Variável FormKey para identificação do formulário
  //no aplicativo
final GlobalKey<FormState> formkey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold( //Çayout do Aplicativo
      appBar: AppBar(
        title: const Text('Figuras Geomátricas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: myBody(context)
      )
    );
  }
  
  //Construção do corpo do Aplicativo
  Widget myBody(BuildContext context) {
    return Form(
      key: formkey2,
      child: ListView(
        children: <Widget>[
          containerButtonRetangulo(context), //Area e Perímetro
          containerButtonQuadrado(context),   //Area e Perímetro
          containerButtonCirculo(context),    //Area e Perímetro
          containerButtonParalelogramo(context),  //Area e Perímetro
          containerButtonLosango(context),    //Area e Perímetro
          containerButtonTrapezio(context),   //Area e Perímetro     
          containerButtonEsfera(context),   //Area e Volume
          containerButtonCubo(context),   //Area e Volume
          containerButtonHexagono(context),   //Area e Perímetro
          containerButtonTriangulo(context),    //Area e Perímetro
        ],
      ),
    );
  }
  
  //Componente (Widget) Container containerButtonRetangulo();
  // define um container com um botão para Calculo do retangulo
  Container containerButtonRetangulo(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(top: 10.0),
      child:  ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,  //cor do fundo do botão
          foregroundColor: Colors.white //cor do texto do botão
        ),
        onPressed: () {
          // Metodo para avançar para a Tela de Cálculo do Retângulo
          onClickRetangulo(context);
        },
        child: const Text('Retangulo',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),

      ),
    );
  }

  void onClickRetangulo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EntradaRetanguloPage(),
      ));
  }

  Container containerButtonQuadrado(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(top: 10.0),
      child:  ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,  //cor do fundo do botão
          foregroundColor: Colors.white //cor do texto do botão
        ),
        onPressed: () {
          // Metodo para avançar para a Tela de Cálculo do Retângulo
          onClickQuadrado(context);
        },
        child: const Text('Quadrado',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),

      ),
    );
  }

  void onClickQuadrado(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EntradaQuadradoPage(),
      ));
  }

    Container containerButtonCirculo(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(top: 10.0),
      child:  ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,  //cor do fundo do botão
          foregroundColor: Colors.white //cor do texto do botão
        ),
        onPressed: () {
          // Metodo para avançar para a Tela de Cálculo do Retângulo
          onClickCirculo(context);
        },
        child: const Text('Circulo',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),

      ),
    );
  }
  void onClickCirculo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EntradaCirculoPage(),
      ));
  }
  Container containerButtonParalelogramo(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(top: 10.0),
      child:  ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,  //cor do fundo do botão
          foregroundColor: Colors.white //cor do texto do botão
        ),
        onPressed: () {
          // Metodo para avançar para a Tela de Cálculo do Paralelogramo
          onClickParalelogramo(context);
        },
        child: const Text('Paralelogramo',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),

      ),
    );
  }
  void onClickParalelogramo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EntradaParalelogramoPage(),
      ));
  }

  Container containerButtonLosango(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(top: 10.0),
      child:  ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,  //cor do fundo do botão
          foregroundColor: Colors.white //cor do texto do botão
        ),
        onPressed: () {
          // Metodo para avançar para a Tela de Cálculo do Losango
          onClickLosango(context);
        },
        child: const Text('Losango',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),

      ),
    );
  }
  void onClickLosango(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EntradaLosangoPage(),
      ));
  }

    Container containerButtonTrapezio(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(top: 10.0),
      child:  ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,  //cor do fundo do botão
          foregroundColor: Colors.white //cor do texto do botão
        ),
        onPressed: () {
          // Metodo para avançar para a Tela de Cálculo do Trapezio
          onClickTrapezio(context);
        },
        child: const Text('Trapezio',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),

      ),
    );
  }
  void onClickTrapezio(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EntradaTrapezioPage(),
      ));
  }

  Container containerButtonEsfera(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(top: 10.0),
      child:  ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,  //cor do fundo do botão
          foregroundColor: Colors.white //cor do texto do botão
        ),
        onPressed: () {
          // Metodo para avançar para a Tela de Cálculo do Trapezio
          onClickEsfera(context);
        },
        child: const Text('Esfera',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),

      ),
    );
  }
  void onClickEsfera(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EntradaEsferaPage(),
      ));
  }

    Container containerButtonCubo(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(top: 10.0),
      child:  ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,  //cor do fundo do botão
          foregroundColor: Colors.white //cor do texto do botão
        ),
        onPressed: () {
          // Metodo para avançar para a Tela de Cálculo do Cubo
          onClickCubo(context);
        },
        child: const Text('Cubo',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),

      ),
    );
  }
  void onClickCubo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EntradaCuboPage(),
      ));
  }

  Container containerButtonHexagono(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(top: 10.0),
      child:  ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,  //cor do fundo do botão
          foregroundColor: Colors.white //cor do texto do botão
        ),
        onPressed: () {
          // Metodo para avançar para a Tela de Cálculo do Hexagono
          onClickHexagono(context);
        },
        child: const Text('Hexagono',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),

      ),
    );
  }
  void onClickHexagono(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EntradaHexagonoPage(),
      ));
  }

  Container containerButtonTriangulo(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(top: 10.0),
      child:  ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,  //cor do fundo do botão
          foregroundColor: Colors.white //cor do texto do botão
        ),
        onPressed: () {
          // Metodo para avançar para a Tela de Cálculo do Triangulo
          onClickTriangulo(context);
        },
        child: const Text('Triangulo',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),

      ),
    );
  }
  void onClickTriangulo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EntradaTrianguloPage(),
      ));
  }
}
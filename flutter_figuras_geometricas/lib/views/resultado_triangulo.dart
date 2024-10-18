import 'package:flutter/material.dart';

import '../controllers/triangulo_controller.dart';


class ResultadoTrianguloPage extends StatelessWidget {
  //const ResultadoTrianguloPage({super.key});
  final TrianguloController retcontroller;

  const ResultadoTrianguloPage(this.retcontroller, {super.key});

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Resultados'),
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center( // Centraliza o conteúdo
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
          children: <Widget>[
            Text("Altura: ${retcontroller.triangulo?.altura}"),
            Text("Base: ${retcontroller.triangulo?.base}"),
            Text("Lado: ${retcontroller.triangulo?.lado}"),
            Text("Área do Triângulo: ${retcontroller.getArea()}"),
            Text("Perímetro do Triângulo: ${retcontroller.getPerimetro()}"),
          ],
        ),
      )
    )
    );
  }
}
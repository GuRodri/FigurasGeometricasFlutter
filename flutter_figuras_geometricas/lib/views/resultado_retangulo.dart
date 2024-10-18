import 'package:flutter/material.dart';


import '../controllers/retangulo_controller.dart';

class ResultadoRetanguloPage extends StatelessWidget {
  //const ResultadoRetanguloPage({super.key});
  final RetanguloController retcontroller;

  const ResultadoRetanguloPage(this.retcontroller, {super.key});

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
          crossAxisAlignment: CrossAxisAlignment.center, // Centraliza horizontalmente
          children: <Widget>[
            Text("Altura: ${retcontroller.retangulo?.altura}"),
            Text("Base: ${retcontroller.retangulo?.base}"),
            Text("Área do Retângulo: ${retcontroller.getArea()}"),
            Text("Perímetro do Retângulo: ${retcontroller.getPerimetro()}"),
          ],
        ),
      )
    )
    );
  }
}
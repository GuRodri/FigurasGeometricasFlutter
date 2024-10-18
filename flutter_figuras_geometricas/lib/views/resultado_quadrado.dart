import 'package:flutter/material.dart';
import 'package:flutter_figuras_geometricas/controllers/quadrado_controller.dart';

class ResultadoQuadradoPage extends StatelessWidget {
  //const ResultadoQuadradoPage({super.key});
  final QuadradoController retcontroller;

  const ResultadoQuadradoPage(this.retcontroller, {super.key});

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
            Text("Lado: ${retcontroller.quadrado?.ladoA}"),
            Text("Área do Quadrado: ${retcontroller.getArea()}"),
            Text("Perímetro do Quadrado: ${retcontroller.getPerimetro()}"),
          ],
        ),
      )
    )
    );
  }
}
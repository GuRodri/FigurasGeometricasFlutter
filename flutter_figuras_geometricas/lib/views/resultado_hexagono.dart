import 'package:flutter/material.dart';

import '../controllers/hexagono_controller.dart';

class ResultadoHexagonoPage extends StatelessWidget {
  //const ResultadoHexagonoPage({super.key});
  final HexagonoController retcontroller;

  const ResultadoHexagonoPage(this.retcontroller, {super.key});

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
            Text("Lado Hexágono: ${retcontroller.hexagono?.lado}"),
            Text("Área do Hexágono: ${retcontroller.getArea()}"),
            Text("Perímetro do Hexágono: ${retcontroller.getPerimetro()}"),
          ],
        ),
      )
    )
    );
  }
}
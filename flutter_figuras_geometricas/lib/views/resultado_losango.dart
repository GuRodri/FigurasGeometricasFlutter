import 'package:flutter/material.dart';

import '../controllers/losango_controller.dart';

class ResultadoLosangoPage extends StatelessWidget {
  //const ResultadoLosangoPage({super.key});
  final LosangoController retcontroller;

  const ResultadoLosangoPage(this.retcontroller, {super.key});

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
            Text("Diagonal Maior: ${retcontroller.losango?.Dmaior}"),
            Text("Diagonal Menor: ${retcontroller.losango?.Dmenor}"),
            Text("Lado: ${retcontroller.losango?.lado}"),
            Text("Área do Losango: ${retcontroller.getArea()}"),
            Text("Perímetro do Losango: ${retcontroller.getPerimetro()}"),
          ],
        ),
      )
    )
    );
  }
}
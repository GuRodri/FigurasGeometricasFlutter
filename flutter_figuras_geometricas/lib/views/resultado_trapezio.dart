import 'package:flutter/material.dart';

import '../controllers/trapezio_controller.dart';

class ResultadoTrapezioPage extends StatelessWidget {
  //const ResultadoTrapezioPage({super.key});
  final TrapezioController retcontroller;

  const ResultadoTrapezioPage(this.retcontroller, {super.key});

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
            Text("Base Maior: ${retcontroller.trapezio?.Bmaior}"),
            Text("Base Menor: ${retcontroller.trapezio?.Bmenor}"),
            Text("Altura: ${retcontroller.trapezio?.altura}"),
            Text("Lado A: ${retcontroller.trapezio?.ladoA}"),
            Text("Lado B: ${retcontroller.trapezio?.ladoB}"),
            Text("Área do Trapézio: ${retcontroller.getArea()}"),
            Text("Perímetro do Trapézio: ${retcontroller.getPerimetro()}"),
          ],
        ),
      )
    )
    );
  }
}
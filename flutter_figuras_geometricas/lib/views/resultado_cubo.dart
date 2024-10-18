import 'package:flutter/material.dart';

import '../controllers/cubo_controller.dart';

class ResultadoCuboPage extends StatelessWidget {
  //const ResultadoCuboPage({super.key});
  final CuboController retcontroller;

  const ResultadoCuboPage(this.retcontroller, {super.key});

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
            Text("Aresta: ${retcontroller.cubo?.aresta}"),
            Text("Área Total do Cubo: ${retcontroller.getArea()}"),
            Text("Volume do Cubo: ${retcontroller.getVolume()}"),
          ],
        ),
      )
    )
    );
  }
}
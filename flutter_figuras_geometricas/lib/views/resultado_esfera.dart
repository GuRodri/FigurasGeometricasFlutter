import 'package:flutter/material.dart';

import '../controllers/esfera_controller.dart';

class ResultadoEsferaPage extends StatelessWidget {
  //const ResultadoEsferaPage({super.key});
  final EsferaController retcontroller;

  const ResultadoEsferaPage(this.retcontroller, {super.key});

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
            Text("Raio: ${retcontroller.esfera?.raio}"),
            Text("Área da Esfera: ${retcontroller.getArea()}"),
            Text("Volume da Esfera: ${retcontroller.getVolume()}"),
          ],
        ),
      )
    )
    );
  }
}
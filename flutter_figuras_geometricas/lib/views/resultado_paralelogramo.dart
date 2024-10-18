import 'package:flutter/material.dart';

import '../controllers/paralelogramo_controller.dart';


class ResultadoParalelogramoPage extends StatelessWidget {
  //const ResultadoParalelogramoPage({super.key});
  final ParalelogramoController retcontroller;

  const ResultadoParalelogramoPage(this.retcontroller, {super.key});

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
            Text("Base: ${retcontroller.paralelogramo?.base}"),
            Text("Altura: ${retcontroller.paralelogramo?.altura}"),
            Text("Área do Paralelogramo: ${retcontroller.getArea()}"),
            Text("Perímetro do Paralelogramo: ${retcontroller.getPerimetro()}"),
          ],
        ),
      )
    )
    );
  }
}
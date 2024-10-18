import 'package:flutter/material.dart';
import 'package:flutter_figuras_geometricas/controllers/circulo_controller.dart';


class ResultadoCirculoPage extends StatelessWidget {
  //const ResultadoRetanguloPage({super.key});
  final CirculoController retcontroller;

  const ResultadoCirculoPage(this.retcontroller, {super.key});

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
            Text("Raio: ${retcontroller.circulo?.raio}"),
            Text("Área do Círculo: ${retcontroller.getArea()}"),
            Text("Perímetro do Círculo: ${retcontroller.getPerimetro()}"),
          ],
        ),
      )
    )
    );
  }
}
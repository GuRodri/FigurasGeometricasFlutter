import 'package:flutter/material.dart';

import '../controllers/triangulo_controller.dart';
import 'resultado_triangulo.dart';

class EntradaTrianguloPage extends StatelessWidget {
   EntradaTrianguloPage({super.key});

  //1. Inicializar o controller.
  final TrianguloController retcontroller = TrianguloController();

  // 2. Declarar componentes TextEditingController para capturar
  // os dados da altura e base do triangulo.
  final TextEditingController alturaController = TextEditingController();
  final TextEditingController baseController = TextEditingController();
  final TextEditingController ladoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Triangulo'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: alturaController,
              decoration: const InputDecoration(labelText: "Altura :"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: baseController,
              decoration: const InputDecoration(labelText: "Base:"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: ladoController,
              decoration: const InputDecoration(labelText: "Lado:"),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                double altura = double.parse(alturaController.text);
                double base = double.parse(baseController.text);
                double lado = double.parse(ladoController.text);
                retcontroller.setDimensoes(altura, base, lado);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultadoTrianguloPage(retcontroller)),
                );
              },
              child: const Text("Calcular"),
              )
          ],
        ),
      )
    );
  }
}
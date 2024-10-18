import 'package:flutter/material.dart';

import '../controllers/retangulo_controller.dart';
import 'resultado_retangulo.dart';

class EntradaRetanguloPage extends StatelessWidget {
   EntradaRetanguloPage({super.key});

  //1. Inicializar o controller.
  final RetanguloController retcontroller = RetanguloController();

  // 2. Declarar componentes TextEditingController para capturar
  // os dados da altura e base do retângulo.
  final TextEditingController alturaController = TextEditingController();
  final TextEditingController baseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Retangulo'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: alturaController,
              decoration: const InputDecoration(labelText: "Altura:"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: baseController,
              decoration: const InputDecoration(labelText: "Base:"),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                double altura = double.parse(alturaController.text);
                double base = double.parse(baseController.text);
                retcontroller.setDimensoes(altura, base);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultadoRetanguloPage(retcontroller)),
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
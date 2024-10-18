import 'package:flutter/material.dart';

import '../controllers/paralelogramo_controller.dart';
import 'resultado_paralelogramo.dart';

class EntradaParalelogramoPage extends StatelessWidget {
   EntradaParalelogramoPage({super.key});

  //1. Inicializar o controller.
  final ParalelogramoController retcontroller = ParalelogramoController();

  // 2. Declarar componentes TextEditingController para capturar
  // os dados da altura e base do paralelogramo.
  final TextEditingController baseController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Paralelogramo'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: baseController,
              decoration: const InputDecoration(labelText: "Base:"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: alturaController,
              decoration: const InputDecoration(labelText: "Altura:"),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                double base = double.parse(baseController.text);
                double altura = double.parse(alturaController.text);
                retcontroller.setDimensoes(base, altura);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultadoParalelogramoPage(retcontroller)),
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
import 'package:flutter/material.dart';

import '../controllers/trapezio_controller.dart';
import 'resultado_trapezio.dart';

class EntradaTrapezioPage extends StatelessWidget {
   EntradaTrapezioPage({super.key});

  //1. Inicializar o controller.
  final TrapezioController retcontroller = TrapezioController();

  // 2. Declarar componentes TextEditingController para capturar
  // os dados da altura e base do Trapezio.
  final TextEditingController BmaiorController = TextEditingController();
  final TextEditingController BmenorController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();
  final TextEditingController ladoAController = TextEditingController();
  final TextEditingController ladoBController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Trapezio'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: BmaiorController,
              decoration: const InputDecoration(labelText: "Base Maior:"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: BmenorController,
              decoration: const InputDecoration(labelText: "Base Menor:"),
              keyboardType: TextInputType.number,
            ),
             TextField(
              controller: alturaController,
              decoration: const InputDecoration(labelText: "Altura:"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: ladoAController,
              decoration: const InputDecoration(labelText: "Lado A:"),
              keyboardType: TextInputType.number,
            ),
             TextField(
              controller: ladoBController,
              decoration: const InputDecoration(labelText: "Lado B:"),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                double Dmaior = double.parse(BmaiorController.text);
                double Dmenor = double.parse(BmenorController.text);
                double altura = double.parse(alturaController.text);
                double ladoA = double.parse(ladoAController.text);
                double ladoB = double.parse(ladoBController.text);
                retcontroller.setDimensoes(Dmaior, Dmenor, altura, ladoA, ladoB);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultadoTrapezioPage(retcontroller)),
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
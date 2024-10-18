import 'package:flutter/material.dart';

import '../controllers/losango_controller.dart';
import 'resultado_losango.dart';

class EntradaLosangoPage extends StatelessWidget {
   EntradaLosangoPage({super.key});

  //1. Inicializar o controller.
  final LosangoController retcontroller = LosangoController();

  // 2. Declarar componentes TextEditingController para capturar
  // os dados da altura e base do losango.
  final TextEditingController DmaiorController = TextEditingController();
  final TextEditingController DmenorController = TextEditingController();
  final TextEditingController ladoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Losango'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: DmaiorController,
              decoration: const InputDecoration(labelText: "Diagonal Maior:"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: DmenorController,
              decoration: const InputDecoration(labelText: "Diagonal Menor:"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: ladoController,
              decoration: const InputDecoration(labelText: "Lado:"),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                double Dmaior = double.parse(DmaiorController.text);
                double Dmenor = double.parse(DmenorController.text);
                double lado = double.parse(ladoController.text);
                retcontroller.setDimensoes(Dmaior, Dmenor, lado);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultadoLosangoPage(retcontroller)),
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
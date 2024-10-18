import 'package:flutter/material.dart';

import '../controllers/quadrado_controller.dart';
import 'resultado_quadrado.dart';


class EntradaQuadradoPage extends StatelessWidget {
   EntradaQuadradoPage({super.key});

  //1. Inicializar o controller.
  final QuadradoController retcontroller = QuadradoController();

  // 2. Declarar componentes TextEditingController para capturar
  // os dados da altura e base do quadrado.
  final TextEditingController ladoAController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Quadrado'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: ladoAController,
              decoration: const InputDecoration(labelText: "Lado:"),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                double lado = double.parse(ladoAController.text);                
                retcontroller.setDimensoes(lado);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultadoQuadradoPage(retcontroller)),
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
import 'package:flutter/material.dart';

import '../controllers/hexagono_controller.dart';
import 'resultado_hexagono.dart';

class EntradaHexagonoPage extends StatelessWidget {
   EntradaHexagonoPage({super.key});

  //1. Inicializar o controller.
  final HexagonoController retcontroller = HexagonoController();

  // 2. Declarar componentes TextEditingController para capturar
  // os dados da altura e base do Hexagono.
  final TextEditingController ladoController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Hexagono'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: ladoController,
              decoration: const InputDecoration(labelText: "Lado hexagono:"),
              keyboardType: TextInputType.number,
            ),            
            ElevatedButton(
              onPressed: () {
                double lado = double.parse(ladoController.text);
                retcontroller.setDimensoes(lado);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultadoHexagonoPage(retcontroller)),
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
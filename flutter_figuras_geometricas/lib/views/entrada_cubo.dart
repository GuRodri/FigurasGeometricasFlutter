import 'package:flutter/material.dart';

import '../controllers/cubo_controller.dart';
import 'resultado_cubo.dart';


class EntradaCuboPage extends StatelessWidget {
   EntradaCuboPage({super.key});

  //1. Inicializar o controller.
  final CuboController retcontroller = CuboController();

  // 2. Declarar componentes TextEditingController para capturar
  // os dados do Cubo.
  final TextEditingController arestaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Cubo'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: arestaController,
              decoration: const InputDecoration(labelText: "Aresta"),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                double aresta = double.parse(arestaController.text);                
                retcontroller.setDimensoes(aresta);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultadoCuboPage (retcontroller)),
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
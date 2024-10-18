import 'package:flutter/material.dart';

import '../controllers/esfera_controller.dart';
import 'resultado_esfera.dart';

class EntradaEsferaPage extends StatelessWidget {
   EntradaEsferaPage({super.key});

  //1. Inicializar o controller.
  final EsferaController retcontroller = EsferaController();

  // 2. Declarar componentes TextEditingController para capturar
  // os dados do esfera.
  final TextEditingController raioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Esfera'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: raioController,
              decoration: const InputDecoration(labelText: "Raio:"),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                double raio = double.parse(raioController.text);                
                retcontroller.setDimensoes(raio);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultadoEsferaPage (retcontroller)),
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
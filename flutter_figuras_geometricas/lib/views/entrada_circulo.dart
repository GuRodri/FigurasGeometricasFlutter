import 'package:flutter/material.dart';

import '../controllers/circulo_controller.dart';
import 'resultado_circulo.dart';


class EntradaCirculoPage extends StatelessWidget {
   EntradaCirculoPage({super.key});

  //1. Inicializar o controller.
  final CirculoController retcontroller = CirculoController();

  // 2. Declarar componentes TextEditingController para capturar
  // os dados do circulo.
  final TextEditingController raioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Circulo'),),
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
                  MaterialPageRoute(builder: (context) => ResultadoCirculoPage (retcontroller)),
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
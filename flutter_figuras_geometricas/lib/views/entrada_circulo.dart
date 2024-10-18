import 'package:flutter/material.dart';

import '../controllers/circulo_controller.dart';
import 'resultado_circulo.dart';

class EntradaCirculoPage extends StatelessWidget {
  EntradaCirculoPage({super.key});

  final CirculoController retcontroller = CirculoController();
  final TextEditingController raioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrada de Dados: Círculo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: raioController,
              decoration: const InputDecoration(labelText: "Raio:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20), // Espaço entre o campo e o ícone
            const Icon(
              Icons.circle,
              size: 100, // Tamanho do ícone
              color: Colors.teal, // Cor do ícone
            ),
            const SizedBox(height: 20), // Espaço entre o ícone e o botão
            ElevatedButton(
              onPressed: () {
                double raio = double.parse(raioController.text);
                retcontroller.setDimensoes(raio);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultadoCirculoPage(retcontroller)),
                );
              },
              child: const Text("Calcular"),
            ),
          ],
        ),
      ),
    );
  }
}

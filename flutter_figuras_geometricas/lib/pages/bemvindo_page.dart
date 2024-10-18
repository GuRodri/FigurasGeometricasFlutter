import 'package:flutter/material.dart';
import 'package:flutter_figuras_geometricas/pages/figurasgeometricas_page.dart';

class Bemvindo extends StatelessWidget {
  final String nome;
  final String sobrenome;

  const Bemvindo({super.key, required this.nome, required this.sobrenome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bem-vindo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bem-vindo, $nome $sobrenome!'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FigurasGeometricasPage()),
                );
              },
              child: const Text('Acessar'),
            ),
          ],
        ),
      ),
    );
  }
}
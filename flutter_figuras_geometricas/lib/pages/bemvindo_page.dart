import 'package:flutter/material.dart';

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
        child: Text('Bem-vindo, $nome $sobrenome!'),
      ),
    );
  }
}

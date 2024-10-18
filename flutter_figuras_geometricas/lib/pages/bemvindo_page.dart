import 'package:flutter/material.dart';

class Bemvindo extends StatelessWidget {
  final String nome;
  final String sobrenome;

  Bemvindo({Key? key, required this.nome, required this.sobrenome}) : super(key: key);

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

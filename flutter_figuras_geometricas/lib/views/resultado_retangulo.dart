import 'package:flutter/material.dart';
import '../controllers/retangulo_controller.dart';

class ResultadoRetanguloPage extends StatelessWidget {
  final RetanguloController retcontroller;

  const ResultadoRetanguloPage(this.retcontroller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados do Retângulo'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Resultados do Retângulo",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple[800],
                ),
              ),
              const SizedBox(height: 40.0),
              Card(
                elevation: 6.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "Altura: ${retcontroller.retangulo?.altura}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.deepPurple[600],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Base: ${retcontroller.retangulo?.base}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.deepPurple[600],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Área do Retângulo: ${retcontroller.getArea()}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.deepPurple[600],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Perímetro do Retângulo: ${retcontroller.getPerimetro()}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.deepPurple[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

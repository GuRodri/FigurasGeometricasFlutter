import 'package:flutter/material.dart';
import '../controllers/triangulo_controller.dart';

class ResultadoTrianguloPage extends StatelessWidget {
  final TrianguloController retcontroller;

  const ResultadoTrianguloPage(this.retcontroller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados do Triângulo'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Resultados do Triângulo",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800],
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
                        "Altura: ${retcontroller.triangulo?.altura}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[600],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Base: ${retcontroller.triangulo?.base}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[600],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Lado: ${retcontroller.triangulo?.lado}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[600],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Área do Triângulo: ${retcontroller.getArea()}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[600],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Perímetro do Triângulo: ${retcontroller.getPerimetro()}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blue[600],
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

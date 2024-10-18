import 'package:flutter/material.dart';
import '../controllers/trapezio_controller.dart';

class ResultadoTrapezioPage extends StatelessWidget {
  final TrapezioController retcontroller;

  const ResultadoTrapezioPage(this.retcontroller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados do Trapézio'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "Resultados do Trapézio",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[800],
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
                        "Base Maior: ${retcontroller.trapezio?.Bmaior}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[600],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Base Menor: ${retcontroller.trapezio?.Bmenor}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[600],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Altura: ${retcontroller.trapezio?.altura}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[600],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Lado A: ${retcontroller.trapezio?.ladoA}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[600],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Lado B: ${retcontroller.trapezio?.ladoB}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[600],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Área do Trapézio: ${retcontroller.getArea()}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[600],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Perímetro do Trapézio: ${retcontroller.getPerimetro()}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[600],
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

import 'package:flutter/material.dart';
import 'package:flutter_figuras_geometricas/controllers/quadrado_controller.dart';

class ResultadoQuadradoPage extends StatelessWidget {
  final QuadradoController retcontroller;

  const ResultadoQuadradoPage(this.retcontroller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados do Quadrado'),
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
                "Resultados do Quadrado",
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
                        "Lado: ${retcontroller.quadrado?.ladoA}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[700],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Área do Quadrado: ${retcontroller.getArea()}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[700],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Perímetro do Quadrado: ${retcontroller.getPerimetro()}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[700],
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

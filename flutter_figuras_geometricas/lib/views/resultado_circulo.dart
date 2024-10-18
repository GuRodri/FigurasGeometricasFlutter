import 'package:flutter/material.dart';
import 'package:flutter_figuras_geometricas/controllers/circulo_controller.dart';

class ResultadoCirculoPage extends StatelessWidget {
  final CirculoController retcontroller;

  const ResultadoCirculoPage(this.retcontroller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados'),
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
                "Resultados do Círculo",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 40.0),
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        "Raio: ${retcontroller.circulo?.raio}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[800],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Área do Círculo: ${retcontroller.getArea()}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[800],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Perímetro do Círculo: ${retcontroller.getPerimetro()}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[800],
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

import 'package:flutter/material.dart';
import '../controllers/hexagono_controller.dart';

class ResultadoHexagonoPage extends StatelessWidget {
  final HexagonoController retcontroller;

  const ResultadoHexagonoPage(this.retcontroller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados do Hexágono'),
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
                "Resultados do Hexágono",
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
                        "Lado do Hexágono: ${retcontroller.hexagono?.lado}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.deepPurple[700],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Área do Hexágono: ${retcontroller.getArea()}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.deepPurple[700],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Perímetro do Hexágono: ${retcontroller.getPerimetro()}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.deepPurple[700],
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

import 'package:flutter/material.dart';
import '../controllers/cubo_controller.dart';

class ResultadoCuboPage extends StatelessWidget {
  final CuboController retcontroller;

  const ResultadoCuboPage(this.retcontroller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados'),
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
                "Resultados do Cubo",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
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
                        "Aresta: ${retcontroller.cubo?.aresta}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.deepPurple[800],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Área Total do Cubo: ${retcontroller.getArea()}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.deepPurple[800],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Volume do Cubo: ${retcontroller.getVolume()}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.deepPurple[800],
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

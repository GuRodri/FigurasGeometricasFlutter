import 'package:flutter/material.dart';
import '../controllers/esfera_controller.dart';

class ResultadoEsferaPage extends StatelessWidget {
  final EsferaController retcontroller;

  const ResultadoEsferaPage(this.retcontroller, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados da Esfera'),
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
                "Resultados da Esfera",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[800],
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
                        "Raio: ${retcontroller.esfera?.raio}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[700],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Área da Esfera: ${retcontroller.getArea()}",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.teal[700],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Volume da Esfera: ${retcontroller.getVolume()}",
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

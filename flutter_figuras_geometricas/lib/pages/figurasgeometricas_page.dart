import 'package:flutter/material.dart';
import 'package:flutter_figuras_geometricas/views/entrada_circulo.dart';
import 'package:flutter_figuras_geometricas/views/entrada_paralelogramo.dart';
import '../views/entrada_cubo.dart';
import '../views/entrada_esfera.dart';
import '../views/entrada_hexagono.dart';
import '../views/entrada_losango.dart';
import '../views/entrada_quadrado.dart';
import '../views/entrada_retangulo.dart';
import '../views/entrada_trapezio.dart';
import '../views/entrada_triangulo.dart';

class FigurasGeometricasPage extends StatelessWidget {
  FigurasGeometricasPage({super.key});

  final GlobalKey<FormState> formkey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: const Text('Figuras Geométricas', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: myBody(context),
      ),
    );
  }

  Widget myBody(BuildContext context) {
    return Form(
      key: formkey2,
      child: ListView(
        children: <Widget>[
          figuraButton(context, 'Retângulo', EntradaRetanguloPage()),
          figuraButton(context, 'Quadrado', EntradaQuadradoPage()),
          figuraButton(context, 'Círculo', EntradaCirculoPage()),
          figuraButton(context, 'Paralelogramo', EntradaParalelogramoPage()),
          figuraButton(context, 'Losango', EntradaLosangoPage()),
          figuraButton(context, 'Trapézio', EntradaTrapezioPage()),
          figuraButton(context, 'Esfera', EntradaEsferaPage()),
          figuraButton(context, 'Cubo', EntradaCuboPage()),
          figuraButton(context, 'Hexágono', EntradaHexagonoPage()),
          figuraButton(context, 'Triângulo', EntradaTrianguloPage()),
        ],
      ),
    );
  }

  Container figuraButton(BuildContext context, String label, Widget page) {
    return Container(
      height: 50.0,
      margin: const EdgeInsets.only(top: 10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 5,
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => page));
        },
        child: Text(
          label,
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

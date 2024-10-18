import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_figuras_geometricas/pages/login_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    //Faça a chamada ao metodo  initState da Classe Superior.
    super.initState();

    //Recomendação do Google para que o Timer
    // contenha uma duração de 3 segundos como padrão
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login(),
        ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding( padding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Loading...', //Definir um texto para o Splash.key
              style: TextStyle(   //Definir um estilo para o texto da Splash.
                fontSize: 22.0, //Fonte no tamanho: 22sp (aproximadamente 22px)
                fontWeight: FontWeight.bold, //Fonte no estilo negrito
              ),
              ),

              SizedBox(height: 35.0,), //Definir uma caixa com espaçamento no tamanho 35dp (aprox. 35px)
              CircularProgressIndicator(  //Widget (Componente circular que indica o progresso.
                //Executa animação circular infinita na cor azul
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              //Define a espessura do Widget CircularProgressIndicator com 11dp (aprox. 12px)
              strokeWidth: 11.0,
              ),
              SizedBox(height: 60.0,), //Definir uma caixa com espaçamento no tamanho de 35 dp (aprox. 35px)
              Text('Alunos:',    //Definir um texto para o Splash
                style:TextStyle(  //Definir um estilo para o texto Splash
                  fontSize: 22.0,  //Fonte no tamanho 22dp (aprox. 22px)
                  fontWeight: FontWeight.bold, //Fonte no estilo negrito.
                  fontFamily: 'Arial' // Familia da Fonte: Arial.
                ),
              ),
              Text('Diogo Castro''\nGustavo Rodrigues da Silva''\nLemuel Pires da Silva',  //Definir um texto para o Splash
              style: TextStyle( //Definir um estilo para o texto Splash
                fontSize: 22.0, //Fonte no tamanho 22dp (aprox. 22px)
                fontWeight: FontWeight.bold,  //Fonte no estilo negrito.
              )
              )
            ],
          ),
          )
      ,)
    );
  }
}
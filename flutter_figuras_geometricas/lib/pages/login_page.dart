import 'package:flutter/material.dart';
//import 'package:flutter_figuras_geometricas/pages/figurasgeometricas_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'bemvindo_page.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final tecLogin = TextEditingController();
  final tecSenha = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final String defLogin = "Prova";
  final String defSenha = "12345";
  final String nomeEntrada = "Atividade";
  final String sobrenomeEntrada = "Avaliativa";

  void showLongToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginApp'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: myBody(context),
      ),
    );
  }

  Widget myBody(BuildContext context) {
    return Form(
      key: formKey,
      child: ListView(
        children: <Widget>[
          textFormFieldLogin(),
          textFormFieldSenha(),
          containerButtonEntrar(context),
        ],
      ),
    );
  }

  TextFormField textFormFieldLogin() {
    return TextFormField(
      controller: tecLogin,
      keyboardType: TextInputType.text,
      style: const TextStyle(color: Colors.black),
      decoration: const InputDecoration(
        labelText: "Login",
        labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
        hintText: "Informe o login",
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor, insira o login';
        }
        return null;
      },
    );
  }

  TextFormField textFormFieldSenha() {
    return TextFormField(
      controller: tecSenha,
      obscureText: true,
      keyboardType: TextInputType.text,
      style: const TextStyle(color: Colors.black),
      decoration: const InputDecoration(
        labelText: "Senha",
        labelStyle: TextStyle(fontSize: 20.0, color: Colors.black),
        hintText: "Informe a senha",
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor, insira a senha';
        }
        return null;
      },
    );
  }

  Container containerButtonEntrar(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(top: 10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          onClickLogin(context);
        },
        child: const Text(
          'Entrar',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
    );
  }

  void onClickLogin(BuildContext context) {
    if (!formKey.currentState!.validate()) {
      return;
    }

    final String login = tecLogin.text;
    final String senha = tecSenha.text;

    if (login == defLogin && senha == defSenha) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Bemvindo(nome: nomeEntrada, sobrenome: sobrenomeEntrada)),
        
      );
      showLongToast("Login efetuado com sucesso!!!");
    } else {
      showLongToast("Falha no Login");
    }
  }
}

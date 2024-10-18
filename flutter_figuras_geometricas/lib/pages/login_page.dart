import 'package:flutter/material.dart';
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
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: const Text('LoginApp', style: TextStyle(fontWeight: FontWeight.bold)),
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
      key: formKey,
      child: ListView(
        children: <Widget>[
          SizedBox(height: 30),
          textFormFieldLogin(),
          SizedBox(height: 20),
          textFormFieldSenha(),
          SizedBox(height: 30),
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
      decoration: InputDecoration(
        labelText: "Login",
        labelStyle: const TextStyle(fontSize: 20.0, color: Colors.teal),
        hintText: "Informe o login",
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.teal),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.teal, width: 2),
        ),
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
      decoration: InputDecoration(
        labelText: "Senha",
        labelStyle: const TextStyle(fontSize: 20.0, color: Colors.teal),
        hintText: "Informe a senha",
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.teal),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.teal, width: 2),
        ),
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
      height: 50.0,
      margin: const EdgeInsets.only(top: 20.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 5,
        ),
        onPressed: () {
          onClickLogin(context);
        },
        child: const Text(
          'Entrar',
          style: TextStyle(fontSize: 20.0),
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
          builder: (context) => Bemvindo(nome: nomeEntrada, sobrenome: sobrenomeEntrada),
        ),
      );
      showLongToast("Login efetuado com sucesso!!!");
    } else {
      showLongToast("Falha no Login");
    }
  }
}

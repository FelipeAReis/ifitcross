import 'package:flutter/material.dart';

class Financeiro extends StatefulWidget {
  const Financeiro({Key? key}) : super(key: key);

  @override
  FinanceiroState createState() => FinanceiroState();
}

class FinanceiroState extends State<Financeiro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela do Financeiro"),
      ),
      body: const Text("Escrito do financeiro"),
    );
  }
}

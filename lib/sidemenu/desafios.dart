import 'package:flutter/material.dart';

class Desafios extends StatefulWidget {
  const Desafios({Key? key}) : super(key: key);

  @override
  DesafiosState createState() => DesafiosState();
}

class DesafiosState extends State<Desafios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela do Desafios"),
      ),
      body: const Text("Escrito do Desafios"),
    );
  }
}

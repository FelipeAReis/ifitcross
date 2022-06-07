import 'package:flutter/material.dart';

class Campeonato extends StatefulWidget {
  const Campeonato({Key? key}) : super(key: key);

  @override
  CampeonatoState createState() => CampeonatoState();
}

class CampeonatoState extends State<Campeonato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela do Campeonato"),
      ),
      body: const Text("Escrito do Campeonato"),
    );
  }
}

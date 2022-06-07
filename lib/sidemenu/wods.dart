import 'package:flutter/material.dart';

class Wods extends StatefulWidget {
  const Wods({Key? key}) : super(key: key);

  @override
  WodsState createState() => WodsState();
}

class WodsState extends State<Wods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela do Wods"),
      ),
      body: const Text("Escrito do Wods"),
    );
  }
}

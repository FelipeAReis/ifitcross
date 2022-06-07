import 'package:flutter/material.dart';

class Checkin extends StatefulWidget {
  const Checkin({Key? key}) : super(key: key);

  @override
  CheckinState createState() => CheckinState();
}

class CheckinState extends State<Checkin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela do Checkin"),
      ),
      body: const Text("Escrito do Checkin"),
    );
  }
}

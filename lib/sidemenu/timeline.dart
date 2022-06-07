import 'package:flutter/material.dart';

class Timeline extends StatefulWidget {
  const Timeline({Key? key}) : super(key: key);

  @override
  TimelineState createState() => TimelineState();
}

class TimelineState extends State<Timeline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela do Timeline"),
      ),
      body: const Text("Escrito do Timeline"),
    );
  }
}

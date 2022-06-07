import 'package:flutter/material.dart';

class ConfiguracoesApp extends StatefulWidget {
  const ConfiguracoesApp({Key? key}) : super(key: key);

  @override
  ConfiguracoesAppState createState() => ConfiguracoesAppState();
}

class ConfiguracoesAppState extends State<ConfiguracoesApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configurações"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(25),
        child: Text("Escrito do financeiro"),
      ),
    );
  }
}

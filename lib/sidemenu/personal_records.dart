import 'package:flutter/material.dart';

class PersonalRecords extends StatefulWidget {
  const PersonalRecords({Key? key}) : super(key: key);

  @override
  PersonalRecordsState createState() => PersonalRecordsState();
}

class PersonalRecordsState extends State<PersonalRecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela do Personal Records"),
      ),
      body: const Text("Escrito do Personal Records"),
    );
  }
}

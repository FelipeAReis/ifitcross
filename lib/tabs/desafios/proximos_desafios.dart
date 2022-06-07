import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ProximosDesafios extends StatefulWidget {
  const ProximosDesafios({Key? key}) : super(key: key);

  @override
  ProximosDesafiosState createState() => ProximosDesafiosState();
}

class ProximosDesafiosState extends State<ProximosDesafios> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Slidable(
        child: Container(
          color: Colors.white,
          child: ListTile(
            leading: const CircleAvatar(
              radius: 25,
              // backgroundImage: NetworkImage(),
              backgroundColor: Colors.indigoAccent,
              foregroundColor: Colors.white,
            ),
            trailing: Column(
              children: const <Widget>[
                Text(""),
                Text(
                  "Aposta",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("\$ 15",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red))
              ],
            ),
            title: const Text('Nome do Desafiante'),
            subtitle: const Text('Descrição detalhada do desafio '),
          ),
        ),
      ),
    );
  }
}

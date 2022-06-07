import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CheckIn extends StatelessWidget {
  const CheckIn({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Slidable(
        startActionPane: ActionPane(
          motion: const ScrollMotion(),
          //    dismissible: DismissiblePane(onDismissed: () {}),
          children: [
            SlidableAction(
              onPressed: (e) {},
              backgroundColor: const Color.fromARGB(255, 35, 209, 0),
              foregroundColor: Colors.white,
              icon: Icons.location_on_sharp,
              label: 'Check-in',
            ),
          ],
        ),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (e) {},
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.cancel,
              label: 'cancelar',
            ),
          ],
        ),
        child: Container(
          color: Colors.white,
          child: ListTile(
            leading: const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/avatar.jpg'),
              backgroundColor: Colors.indigoAccent,
              foregroundColor: Colors.white,
            ),
            trailing: Column(
              children: const <Widget>[Text("Crossfit")],
            ),
            title: const Text('Professor Eduardo'),
            subtitle: Text(text),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class DesafiosAtivos extends StatefulWidget {
  const DesafiosAtivos({Key? key}) : super(key: key);

  @override
  DesafiosAtivosState createState() => DesafiosAtivosState();
}

class DesafiosAtivosState extends State<DesafiosAtivos> {
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
              icon: Icons.check,
              label: 'Aceitar',
            ),
            SlidableAction(
              onPressed: (e) {},
              backgroundColor: const Color(0xFF21B7CA),
              foregroundColor: Colors.white,
              icon: Icons.arrow_forward_ios_outlined,
              label: 'Próximo',
            ),
          ],
        ),
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (e) {},
              backgroundColor: Colors.black12,
              foregroundColor: Colors.black,
              icon: Icons.edit,
              label: 'Editar',
            ),
            SlidableAction(
              onPressed: (e) {},
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: Icons.do_not_disturb_alt,
              label: 'Negar',
            ),
          ],
        ),
        child: Container(
          color: Colors.white,
          child: ListTile(
            leading: const CircleAvatar(
              radius: 25,
              // backgroundImage: NetworkImage(),
              backgroundColor: Colors.indigoAccent,
              foregroundColor: Colors.white,
              child: Icon(Icons.av_timer),
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
            title: const Text('Felipe Reis'),
            subtitle: const Text('country 3800 metros fanfic'),
          ),
        ),
      ),
    );
  }
}

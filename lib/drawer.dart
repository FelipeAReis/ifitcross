import 'package:flutter/material.dart';
import 'package:ifitcross/champions_icons.dart';
import 'package:ifitcross/sidemenu/campeonatos.dart';
import 'package:ifitcross/sidemenu/checkin.dart';
import 'package:ifitcross/sidemenu/configuracoes.dart';
import 'package:ifitcross/sidemenu/desafios.dart';
import 'package:ifitcross/sidemenu/financeiro.dart';
import 'package:ifitcross/sidemenu/personal_records.dart';
import 'package:ifitcross/sidemenu/timeline.dart';
import 'package:ifitcross/sidemenu/wods.dart';

class NovoDrawer extends StatefulWidget {
  const NovoDrawer({Key? key}) : super(key: key);

  @override
  NovoDrawerState createState() => NovoDrawerState();
}

class NovoDrawerState extends State<NovoDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text("Rafael Albanez"),
            accountEmail: const Text("rafael@crossfitbadbull.com.br"),
            currentAccountPicture: GestureDetector(
              child: ClipOval(
                child: Image.asset(
                  'assets/avatar.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            otherAccountsPictures: <Widget>[
              GestureDetector(
                child: Column(
                  children: const <Widget>[
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 22.0,
                    ),
                    Text(
                      "Editar",
                      style: TextStyle(color: Colors.white, fontSize: 10.0),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ConfiguracoesApp()));
                },
              )
            ],
          ),
          Card(
              margin: const EdgeInsets.fromLTRB(3, 2, 3, 15),
              child: Container(
                padding: const EdgeInsets.all(11),
                height: 40,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black26],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: const <Widget>[
                        Icon(Icons.attach_money),
                        Text(
                          " Saldo",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "1.000 CC",
                      textAlign: TextAlign.right,
                      softWrap: true,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
              )),
          ListTile(
            trailing: const Icon(Icons.account_balance),
            title: const Text('Financeiro'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Financeiro()));
            },
          ),
          ListTile(
            trailing: const Icon(Icons.person),
            title: const Text('Desafios'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Desafios()));
            },
          ),
          ListTile(
            trailing: const Icon(Icons.fitness_center),
            title: const Text('Wods'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Wods()));
            },
          ),
          ListTile(
            trailing: const Icon(Icons.person_pin_circle),
            title: const Text('Check-in'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Checkin()));
            },
          ),
          ListTile(
            trailing: const Icon(Icons.timeline),
            title: const Text('Timeline'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Timeline()));
            },
          ),
          ListTile(
            trailing: const Icon(Champions.award_1),
            title: const Text('Personal Records'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PersonalRecords()));
            },
          ),
          ListTile(
            trailing: const Icon(Champions.trophy),
            title: const Text('Campeonatos'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Campeonato()));
            },
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Text('Sair'),
            trailing: const Icon(Icons.exit_to_app),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ifitcross/tabs/checkin.dart';
import 'package:ifitcross/tabs/desafios/ativos.dart';
import 'package:ifitcross/tabs/desafios/proximos_desafios.dart';
import 'package:ifitcross/tabs/wod.dart';

class BodyPrincipal extends StatefulWidget {
  const BodyPrincipal({Key? key}) : super(key: key);

  @override
  BodyPrincipalState createState() => BodyPrincipalState();
}

class BodyPrincipalState extends State<BodyPrincipal>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late TabController _tabController2;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController2 = TabController(length: 7, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 15, 0, 0),
              child: Row(
                children: <Widget>[
                  ClipOval(
                      child: Image.asset(
                    "assets/logo.png",
                    width: 60,
                    height: 60,
                  )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            "Crossfit Bad Bull",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text("Venha ser BADBULL 🐃💪🏋️‍♀️!!"),
                        ],
                      )),
                ],
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                        ),
                        Icon(Icons.people),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                        ),
                        Text(
                          "Desafios",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      child: TabBar(
                        labelColor: Colors.black,
                        controller: _tabController,
                        tabs: const <Widget>[
                          Tab(
                            text: 'Novos',
                          ),
                          Tab(
                            text: 'Ativos',
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                        height: 90,
                        child: TabBarView(
                          controller: _tabController,
                          children: const <Widget>[
                            ProximosDesafios(),
                            DesafiosAtivos(),
                          ],
                        )),
                    Container(
                      //height: 10,
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),

                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Icon(
                              Icons.arrow_left,
                              size: 16,
                            ),
                          )),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: const Icon(
                                Icons.arrow_right,
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                        Icon(Icons.person_pin_circle),
                        Padding(padding: EdgeInsets.fromLTRB(15, 0, 0, 0)),
                        Text(
                          "Check-in",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      child: TabBar(
                        isScrollable: true,
                        labelColor: Colors.black,
                        controller: _tabController2,
                        tabs: const <Widget>[
                          Tab(text: '2:00'),
                          Tab(text: '3:00'),
                          Tab(text: '5:00'),
                          Tab(text: '6:00'),
                          Tab(text: '7:00'),
                          Tab(text: '8:00'),
                          Tab(text: '9:00'),
                        ],
                      ),
                    ),
                    SizedBox(
                        height: 90,
                        child: TabBarView(
                          controller: _tabController2,
                          children: const <Widget>[
                            CheckIn(text: '2:00'),
                            CheckIn(text: '3:00'),
                            CheckIn(text: '4:00'),
                            CheckIn(text: '5:00'),
                            CheckIn(text: '6:00'),
                            CheckIn(text: '7:00'),
                            CheckIn(text: '8:00'),
                          ],
                        )),
                    Container(
                      //height: 10,
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(0),

                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Icon(
                              Icons.arrow_left,
                              size: 16,
                            ),
                          )),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: const Icon(
                                Icons.arrow_right,
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        ),
                        Icon(Icons.fitness_center),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        ),
                        Text(
                          "Wod do Dia ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 2,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Wod(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

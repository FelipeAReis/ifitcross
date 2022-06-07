import 'package:flutter/material.dart';
import 'package:ifitcross/body_principal.dart';
import 'drawer.dart';

class AppBarMain extends StatelessWidget {
  const AppBarMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CrossBox",
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
          endDrawer: const NovoDrawer(),
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              children: <Widget>[
                Image.asset(
                  "assets/logo_crossbox.png",
                  fit: BoxFit.scaleDown,
                  height: 32,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text(
                    "iFitCross",
                    overflow: TextOverflow.fade,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            //final title
          ),
          body: const SingleChildScrollView(
            child: BodyPrincipal(),
          )),
    ),
  );
}

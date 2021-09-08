import 'package:alevelcoursework/interfaces/components/themeSwitch.dart';
import 'package:alevelcoursework/themes/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../responsive.dart';
import '../../../interfaces/components/sideMenu.dart';
import '../login.dart';
import 'body.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return new Scaffold(
      body: Responsive(
        mobile: Container(child: Center(child: Text("mobile"))),
        tablet: Container(child: Center(child: Text("tablet"))),
        desktop: Row(children: <Widget>[
          Expanded(
            flex: deviceSize.width > 1000 ? 2 : 4,
            child: Center(child: Text("side menu")),
          ),
          Expanded(
            flex: deviceSize.width > 1000 ? 8 : 10,
            child: Center(child: Text("home body")),
          )
        ]),
      ),
    );
  }
}

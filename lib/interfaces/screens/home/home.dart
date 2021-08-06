import 'package:alevelcoursework/interfaces/components/themeSwitch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../responsive.dart';
import '../../../interfaces/components/sideMenu.dart';
import 'homeBody.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    /// allows to know the height and width of the device
    Size deviceSize = MediaQuery.of(context).size;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Home page"),
              //backgroundColor: Theme.of(context).canvasColor,
              actions: <Widget>[ThemeSwitch()],
            ),
            body: Row(children: <Widget>[
              Expanded(
                flex: deviceSize.width > 1000 ? 2 : 4,
                child: SideMenu(),
              ),
              Expanded(
                flex: deviceSize.width > 1000 ? 8 : 10,
                child: HomeBody(),
              )
            ])));
  }
}

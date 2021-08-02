import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // size of the device
    Size deviceSize = MediaQuery.of(context).size;

    return Scaffold(
        //TODO: add appbar here
        appBar: AppBar(
            title: Text("Home page"),
            backgroundColor: Theme.of(context).canvasColor,
            actions: <Widget>[]),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) =>
                //TODO: add responsive layout here
                Container(
                    child: Row(children: <Widget>[
                  Expanded(flex: 1, child: Container(child: Text("menu"))),
                  Expanded(flex: 5, child: Container(child: Text("body")))
                ]))));
  }
}

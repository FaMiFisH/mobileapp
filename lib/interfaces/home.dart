
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO: add appbar here

      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          //TODO: add responsive layout here
          return Container();
        }
      )

    );
  }
}

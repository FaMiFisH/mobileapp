import 'package:alevelcoursework/interfaces/components/themeSwitch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("A-level coursework"),
          actions: [ThemeSwitch()],
        ),
        body: Container(child: Center(child: Text("body"))));
  }
}

import 'package:flutter/material.dart';
import 'interfaces/register.dart';
import 'interfaces/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder> {
        "RegisterPage": (BuildContext context) => new RegisterPage()
      },
      home: LoginPage()
    );
  }
}



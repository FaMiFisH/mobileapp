import 'package:flutter/material.dart';
import 'interfaces/home.dart';
import 'interfaces/register.dart';
import 'interfaces/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  //turn debug banner off
      // initialise routes
      routes: <String, WidgetBuilder> {
        "RegisterPage": (BuildContext context) => new RegisterPage(),
        "HomePage": (BuildContext context) => new HomePage()
      },
      home: LoginPage()
    );
  }
}



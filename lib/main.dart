import 'package:flutter/material.dart';
import 'interfaces/home.dart';
import 'interfaces/register.dart';
import 'interfaces/LoginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "A-level Coursework",
      theme: ThemeData(
        primaryColor: Colors.lightBlue[200],
        accentColor: Colors.blue[600],
        hintColor: Colors.grey,

        fontFamily: "Montserrat",
        textTheme: TextTheme()

        //TODO: set dark theme and padding??

      ),
      routes: <String, WidgetBuilder> {
        "Register": (BuildContext context) => new RegisterScreen(),
        "Home": (BuildContext context) => new HomePage()
      },
      home: LoginScreen()
    );
  }
}



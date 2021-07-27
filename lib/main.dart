import 'package:flutter/material.dart';
import 'interfaces/home.dart';
import 'interfaces/RegisterScreen.dart';
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
            shadowColor: Colors.blue[100],
            fontFamily: "Montserrat",
            textTheme: TextTheme()

            // TODO: dark theme and maybe global padding

            ),
        routes: <String, WidgetBuilder>{
          "Register": (BuildContext context) => new RegisterScreen(),
          "Home": (BuildContext context) => new HomePage()
        },
        home: LoginScreen());
  }
}

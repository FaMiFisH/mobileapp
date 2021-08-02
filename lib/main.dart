import 'package:flutter/material.dart';
import 'interfaces/home.dart';
import 'interfaces/RegisterScreen.dart';
import 'interfaces/LoginScreen.dart';
//import 'assets/constants.dart' as constants;
import 'package:alevelcoursework/assets/constants.dart' as constants;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "A-level Coursework",
        // light theme
        theme: ThemeData(
          brightness: Brightness.light,
          // colors
          primaryColorLight: constants.l_primaryColor,
          primaryColorDark: constants.l_secondaryColor,
          canvasColor: constants.l_canvasColor,
          accentColor: constants.l_accentColor,
          hintColor: Colors.grey,
          shadowColor: constants.shadowColor,
          errorColor: Colors.red,

          // font
          fontFamily: "Montserrat",
          textTheme: TextTheme(
              headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
              headline2: TextStyle(fontSize: 36.0),
              bodyText1: TextStyle(fontSize: 14.0)),
        ),
        // TODO: dark theme and maybe global padding
        //darkTheme: ThemeData(),
        routes: <String, WidgetBuilder>{
          "Register": (BuildContext context) => new RegisterScreen(),
          "Home": (BuildContext context) => new HomePage()
        },
        home: LoginScreen());
  }
}

import 'package:alevelcoursework/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'interfaces/screens/home/main.dart';
import 'interfaces/screens/register/main.dart';
import 'package:provider/provider.dart';

import 'interfaces/screens/login/main.dart';

void main() async {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "A-level Coursework",
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightThemeData,
            darkTheme: MyThemes.darkThemeData,
            routes: <String, WidgetBuilder>{
              "Login": (BuildContext context) => new LoginMain(),
              "Register": (BuildContext context) => new RegisterMain(),
              "Home": (BuildContext context) => new HomeMain()
            },
            home: LoginMain());
      });
}

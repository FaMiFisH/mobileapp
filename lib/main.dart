import 'package:alevelcoursework/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'interfaces/screens/home/home.dart';
import 'interfaces/screens/register.dart';
import 'package:provider/provider.dart';

import 'interfaces/screens/login.dart';
import 'mainApp.dart';

import 'constants.dart' as constants;

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
            title: constants.appTitle,
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightThemeData,
            darkTheme: MyThemes.darkThemeData,
            routes: <String, WidgetBuilder>{
              "Login": (BuildContext context) => new LoginPage(),
              "Register": (BuildContext context) => new RegisterPage(),
              "MainApp": (BuildContext context) => new MainApp()
            },
            home: LoginPage());
      });
}

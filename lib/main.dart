import 'package:alevelcoursework/themes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'interfaces/HomeScreen.dart';
import 'interfaces/RegisterScreen.dart';
import 'interfaces/LoginScreen.dart';
import 'package:provider/provider.dart';

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
              "Login": (BuildContext context) => new LoginScreen(),
              "Register": (BuildContext context) => new RegisterScreen(),
              "Home": (BuildContext context) => new HomePage()
            },
            home: LoginScreen());
      });
}

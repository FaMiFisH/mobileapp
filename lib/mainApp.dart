import 'package:alevelcoursework/themes/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'constants.dart' as constants;

import 'interfaces/screens/home/home.dart';
import 'interfaces/screens/login.dart';

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return new MaterialApp(
            debugShowCheckedModeBanner: false,
            title: constants.appTitle,
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightThemeData,
            darkTheme: MyThemes.darkThemeData,
            routes: <String, WidgetBuilder>{
              "Login": (BuildContext context) => new LoginPage(),
              "Home": (BuildContext context) => new HomePage(),
              "Timetable": (BuildContext context) => new HomePage(),
            },
            home: HomePage());
      });
}

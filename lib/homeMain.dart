import 'package:alevelcoursework/themes/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'interfaces/screens/home/home.dart';
import 'interfaces/screens/login.dart';

class HomeMain extends StatelessWidget {
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
              "Login": (BuildContext context) => new LoginPage(),
              "Home": (BuildContext context) => new HomePage()
            },
            home: HomePage());
      });
}

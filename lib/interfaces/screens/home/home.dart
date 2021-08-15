import 'package:alevelcoursework/interfaces/components/themeSwitch.dart';
import 'package:alevelcoursework/themes/themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../responsive.dart';
import '../../../interfaces/components/sideMenu.dart';
import '../login.dart';
import 'homeBody.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        Size deviceSize = MediaQuery.of(context).size;
        final themeProvider = Provider.of<ThemeProvider>(context);
        return new MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "A-level Coursework",
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightThemeData,
            darkTheme: MyThemes.darkThemeData,
            routes: <String, WidgetBuilder>{
              "Login": (BuildContext context) => new LoginPage(),
              "Home": (BuildContext context) => new HomePage()
            },
            home: Scaffold(
              body: Responsive(
                key: UniqueKey(),
                mobile: Container(),
                tablet: Container(),
                desktop: Row(children: <Widget>[
                  Expanded(
                    flex: deviceSize.width > 1000 ? 2 : 4,
                    child: SideMenu(),
                  ),
                  Expanded(
                    flex: deviceSize.width > 1000 ? 8 : 10,
                    child: HomeBody(),
                  )
                ]),
              ),
            ));
      });
}

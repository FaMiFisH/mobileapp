import 'package:flutter/material.dart';
import 'package:alevelcoursework/assets/constants.dart' as constants;

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  // indicates the current active theme
  bool get isDarkTheme => themeMode == ThemeMode.dark;

  // sets the new theme
  void setTheme(bool value) {
    themeMode = value ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final lightThemeData = ThemeData(
    brightness: Brightness.light,
    // colors
    colorScheme: ColorScheme.light(),
    canvasColor: constants.l_primaryColorL,
    accentColor: constants.l_accentColor,
    primaryColorLight: constants.l_primaryColorD,
    primaryColorDark: constants.l_secondaryColor,
    hintColor: Colors.black,
    shadowColor: Colors.white,
    errorColor: constants.errorColor,
    fontFamily: null,
    textTheme: null,
  );

  static final darkThemeData = ThemeData(
    // brightness
    brightness: Brightness.dark,
    // colors
    colorScheme: ColorScheme.dark(),
    primaryColorLight: null,
    primaryColorDark: null,
    accentColor: null,
    canvasColor: null,
    cardColor: null,
    hintColor: null,
    errorColor: null,
    toggleableActiveColor: null,

    // font
    fontFamily: null,

    // text
    textTheme: null,

    // buttons
    buttonColor: null,
    buttonTheme: null,
    textButtonTheme: null,
    elevatedButtonTheme: null,
    outlinedButtonTheme: null,

    // switch
    switchTheme: null,

    // checkbox
    checkboxTheme: null,

    // icons
    iconTheme: null,

    // inputs
    inputDecorationTheme: null,

    // cards
    cardTheme: null,

    // appBar
    appBarTheme: null,

    // scrollbar
    scrollbarTheme: null,

    // floating action button
    floatingActionButtonTheme: null,
  );
}





// TextTheme getTextTheme() => TextTheme(
//       headline1: TextStyle(
//           fontSize: 72.0,
//           fontWeight: FontWeight.bold,
//           color: constants.l_secondaryColor),
//       headline2: TextStyle(fontSize: 36.0),
//       bodyText1: TextStyle(fontSize: 14.0));
//   String getTextFamily() => "Montserrat";

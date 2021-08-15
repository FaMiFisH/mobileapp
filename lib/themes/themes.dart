import 'package:flutter/material.dart';
import '../../constants.dart' as constants;

import 'GetThemes.dart';

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
  /// light colors
  static const Color backgroundL = const Color(0xFFFFF7EA);
  static const Color primaryL = const Color(0xFFFED482);
  static const Color secondaryL = const Color(0xFFC8243C);
  static const Color accentL = const Color(0xFF820A2D);

  /// dark colors
  static const Color backgroundD = const Color(0xFF282C34);
  static const Color primaryD = const Color(0xFF203745);
  static const Color secondaryD = const Color(0xFF346973);
  static const Color accentD = const Color(0xFF03DAC6);

  ///-light theme--------------------------------
  ///
  static final lightThemeData = ThemeData(
      brightness: Brightness.light,

      /// colors
      colorScheme: ColorScheme.light(),
      canvasColor: backgroundL,
      primaryColorLight: primaryL,
      primaryColorDark: secondaryL,
      accentColor: accentL,
      cardColor: secondaryL,
      hintColor: Colors.grey[700],
      shadowColor: Colors.white,
      errorColor: Color(0xFFFF0033),
      toggleableActiveColor: accentL,

      /// font
      fontFamily: "Montserrat",

      /// text
      textTheme: GetThemes.getTextTheme(accentL, secondaryL, backgroundL),

      /// buttons
      elevatedButtonTheme: GetThemes.getElevatedBtnTheme(accentL, Colors.white),

      /// appbar
      appBarTheme: GetThemes.getAppBarTheme(Colors.white, secondaryL));

  ///-Dark theme------------------------------------------------
  ///
  ///
  static final darkThemeData = ThemeData(
    /// brightness
    brightness: Brightness.dark,

    /// colors
    colorScheme: ColorScheme.dark(),
    canvasColor: backgroundD,
    primaryColorLight: primaryD,
    primaryColorDark: secondaryD,
    accentColor: accentD,
    cardColor: null,
    hintColor: Colors.grey[300],
    shadowColor: Colors.black,
    errorColor: Color(0xFFCC0000),
    toggleableActiveColor: accentD,

    /// font
    fontFamily: "Montserrat",

    // text
    textTheme: GetThemes.getTextTheme(accentD, secondaryD, backgroundD),

    // buttons
    buttonColor: null,
    buttonTheme: null,
    textButtonTheme: null,
    elevatedButtonTheme: GetThemes.getElevatedBtnTheme(accentD, Colors.black),
    outlinedButtonTheme: null,

    // switch
    switchTheme: null,

    // checkbox
    checkboxTheme: null,

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

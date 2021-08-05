import 'package:flutter/material.dart';

class GetThemes {
  /// text theme
  static TextTheme getTextTheme(accentColor, secondaryColor, btnTxtColor) =>
      TextTheme(
        headline1: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 80.0,
            fontWeight: FontWeight.w300,
            color: accentColor),
        headline2: TextStyle(fontSize: 60.0, fontWeight: FontWeight.w300),
        headline3: TextStyle(fontSize: 48.0, fontWeight: FontWeight.w400),
        headline4: TextStyle(fontSize: 34.0, fontWeight: FontWeight.w400),
        headline5: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400),
        subtitle1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
        subtitle2: TextStyle(
            fontFamily: "Georgia",
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: accentColor,
            decoration: TextDecoration.underline),
        bodyText1: TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.w400, fontFamily: "Hind"),
        bodyText2: TextStyle(
            fontSize: 14.0, fontWeight: FontWeight.w400, fontFamily: "Hind"),
        button: TextStyle(
            fontSize: 14.0, fontWeight: FontWeight.w500, color: btnTxtColor),
      );

  /// elevated button
  static ElevatedButtonThemeData getElevatedBtnTheme(
          backgroundColor, shadowColor) =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: backgroundColor,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            minimumSize: Size(double.infinity, 50),
            shadowColor: shadowColor,
            elevation: 2.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24))),
      );
}

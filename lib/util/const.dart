import 'package:flutter/material.dart';

class Constants {
  static String appName = "سفاري";

  //Colors for theme
  static Color lightPrimary = const Color.fromARGB(255, 62, 192, 196);
  static Color darkPrimary = Colors.grey;
  static Color lightAccent = const Color.fromARGB(255, 255, 255, 255);
  static Color darkAccent = Colors.white;
  static Color lightBG = const Color.fromARGB(255, 255, 255, 255);
  static Color darkBG = Colors.black;

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    primaryColorLight: lightAccent,
    scaffoldBackgroundColor: lightBG,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: darkBG,
    primaryColor: darkPrimary,
    primaryColorLight: darkAccent,
    scaffoldBackgroundColor: darkBG,
  );
}

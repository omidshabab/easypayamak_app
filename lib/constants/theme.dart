import 'package:easypayamak/constants/colors.dart';
import 'package:easypayamak/constants/config.dart';
import 'package:easypayamak/ui/extensions/darkmode.extension.dart';
import 'package:flutter/material.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData(
    fontFamily: Config.fontName,
    primaryColor: !context.isDarkMode ? Colors.black : Colors.white,
    appBarTheme: appBarTheme,
    scaffoldBackgroundColor: Colors.white,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    iconTheme: IconThemeData(color: contentColorLightTheme),
    colorScheme: ColorScheme.light(
      primary: !context.isDarkMode ? Colors.black : Colors.white,
      error: errorColor,
      background: !context.isDarkMode ? Colors.black : Colors.white,
    ),
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData(
    fontFamily: Config.fontName,
    primaryColor: !context.isDarkMode ? Colors.black : Colors.white,
    appBarTheme: appBarTheme,
    scaffoldBackgroundColor: Colors.black,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    iconTheme: IconThemeData(color: contentColorDarkTheme),
    colorScheme: ColorScheme.dark().copyWith(
      primary: !context.isDarkMode ? Colors.black : Colors.white,
      error: errorColor,
      background: !context.isDarkMode ? Colors.black : Colors.white,
    ),
  );
}

var appBarTheme = AppBarTheme(
  elevation: 0,
  toolbarHeight: 65,
  centerTitle: true,
  titleTextStyle: TextStyle(
    fontFamily: Config.fontName,
    fontWeight: FontWeight.w500,
  ),
);

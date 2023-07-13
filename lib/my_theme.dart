import 'package:flutter/material.dart';

class MyThemeData {
  static const colorBlack = Color.fromRGBO(36, 36, 36, 1.0);
  static const colorGold = Color.fromRGBO(183, 147, 95, 1.0);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: colorBlack
      )
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: colorBlack,
      ),
      subtitle1: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: colorGold,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: colorGold,
      selectedItemColor: colorBlack,
      unselectedItemColor: Colors.white
    )
  );

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      textTheme: TextTheme(
          headline1: TextStyle(
        fontSize: 30,
      )));
}

import 'package:flutter/material.dart';

class MyThemeData {
  static const colorBlack = Color.fromRGBO(36, 36, 36, 1.0);
  static const colorGold = Color.fromRGBO(183, 147, 95, 1.0);
  static const colorWhite = Color.fromRGBO(255, 255, 255, 1.0);
  static const colorPrimaryDark = Color.fromRGBO(20, 26, 46, 1.0);
  static const colorYellow = Color.fromRGBO(250, 204, 29, 1.0);
  static ThemeData lightTheme = ThemeData(
    primaryColor: colorGold,
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
      unselectedItemColor: colorWhite
    )
  );

  static ThemeData darkTheme = ThemeData(
      primaryColor: colorPrimaryDark,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          iconTheme: IconThemeData(
              color: colorWhite
          )
      ),
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: colorWhite,
        ),
        subtitle1: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: colorYellow,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: colorPrimaryDark,
          selectedItemColor: colorWhite,
          unselectedItemColor: colorYellow
      )
  );
}

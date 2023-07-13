import 'package:flutter/material.dart';
import 'package:islamic/home_screen/home.dart';
import 'package:islamic/my_theme.dart';
import 'package:islamic/sura_details/sura_details.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName :(context) => HomeScreen(),
        SuraDetailsScreen.routeName : (context) => SuraDetailsScreen(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
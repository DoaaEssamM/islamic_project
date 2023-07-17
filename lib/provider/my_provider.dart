import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{

  String languageCode = 'en';
  ThemeMode mode = ThemeMode.light;

  void changeLanguage (String lang){
    if(languageCode==lang) return;
    languageCode=lang;
    notifyListeners();
  }
  void changeThemeMode(ThemeMode modee){
    mode=modee;
    notifyListeners();
  }
  String getBgImage(){
    if(mode==ThemeMode.light){
      return 'assets/images/main_background.png';
  }
    return 'assets/images/main_bg_dark.png';
  }
}
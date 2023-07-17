import 'package:flutter/material.dart';
import 'package:islamic/shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProvider extends ChangeNotifier{

  String languageCode = 'en';
  ThemeMode mode = ThemeMode.light;
  SharedPreferences? prefs;
  Future <void> initializeSharedPrefs() async{
    prefs = await SharedPreferences.getInstance();
  }

  void getThemeAndLanguage(){
    String theme = SharedPrefs.prefs?.getString('theme')??'light';
    if(theme=='light'){
      mode = ThemeMode.light;
    }else{
      mode = ThemeMode.dark;
    }
    String language = SharedPrefs.prefs?.getString('lang')??'en';
    languageCode = language;
  }

  void changeLanguage (String lang){
    if(languageCode==lang) return;
    languageCode=lang;
    prefs?.setString("lang", lang);
    notifyListeners();
  }
  void changeThemeMode(ThemeMode modee){
    mode=modee;
    if (mode == ThemeMode.light) {
      mode=ThemeMode.light;
      SharedPrefs.prefs?.setString('theme', 'light');
    }else {
      mode = ThemeMode.dark;
      SharedPrefs.prefs?.setString('theme', 'dark');
    }
    notifyListeners();
  }
  String getBgImage(){
    if(mode==ThemeMode.light){
      return 'assets/images/main_background.png';
  }
    return 'assets/images/main_bg_dark.png';
  }
}
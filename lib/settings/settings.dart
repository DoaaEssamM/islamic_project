import 'package:flutter/material.dart';
import 'package:islamic/my_theme.dart';
import 'package:islamic/provider/my_provider.dart';
import 'package:islamic/settings/theme_mode_bottom_sheet.dart';
import 'package:provider/provider.dart';

import 'language_bottom_sheet.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.subtitle1,),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              showLanguageBottomSheat(context);
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: MyThemeData.colorGold),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                pro.languageCode=='en'? AppLocalizations.of(context)!.english
                    :AppLocalizations.of(context)!.arabic,
                style: pro.mode== ThemeMode.light? TextStyle(fontSize: 18, color: MyThemeData.colorBlack)
                    :TextStyle(fontSize: 18, color: MyThemeData.colorYellow)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.subtitle1,),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (){
              showThemeModeBottomSheat(context);

            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: MyThemeData.colorGold),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                pro.mode== ThemeMode.light? AppLocalizations.of(context)!.light
                    :AppLocalizations.of(context)!.dark,
                style: pro.mode== ThemeMode.light? TextStyle(fontSize: 18, color: MyThemeData.colorBlack)
                    :TextStyle(fontSize: 18, color: MyThemeData.colorYellow) ),
              //Text(AppLocalizations.of(context)!.light, style: TextStyle(fontSize: 18),),
            ),
          )
        ],
      ),
    );
  }

  void showThemeModeBottomSheat(BuildContext context) {
    showModalBottomSheet(context: context, builder: (context) {
      return ThemeModeBottomSheet();
    });
  }

  void showLanguageBottomSheat(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
      return LanguageBottomSheet();
    });
  }
}

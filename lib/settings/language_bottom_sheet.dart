import 'package:flutter/material.dart';
import 'package:islamic/my_theme.dart';
import 'package:islamic/provider/my_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class LanguageBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              provider.changeLanguage('en');
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.english,
                    style: Theme.of(context).textTheme.headline1!.copyWith(
                        color:provider.languageCode=='en'? MyThemeData.colorGold:
                        MyThemeData.colorBlack
                    ),),
                Icon(Icons.done, size: 30, color:provider.languageCode=='en'? MyThemeData.colorGold:
                Colors.transparent,)
              ],
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              provider.changeLanguage('ar');
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.arabic, style: Theme.of(context).textTheme.headline1?.copyWith(
                    color:provider.languageCode=='ar'? MyThemeData.colorGold:
                    MyThemeData.colorBlack
                ),),
                Icon(Icons.done, size: 30, color: provider.languageCode=='ar'? MyThemeData.colorGold:
                  Colors.transparent,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

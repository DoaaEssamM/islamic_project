import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../my_theme.dart';
import '../provider/my_provider.dart';
class ThemeModeBottomSheet extends StatelessWidget {
  const ThemeModeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              provider.changeThemeMode(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.light,
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                      color:(provider.mode==ThemeMode.light)||(provider.mode==ThemeMode.dark)?
                      MyThemeData.colorGold:
                      MyThemeData.colorBlack
                  ),),
                Icon(Icons.done, size: 30,
                  color:provider.mode==ThemeMode.light? MyThemeData.colorGold:
                Colors.transparent,)
              ],
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              provider.changeThemeMode(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.dark,
                  style: Theme.of(context).textTheme.headline1?.copyWith(
                    color:(provider.mode==ThemeMode.dark)||(provider.mode==ThemeMode.light)?
                    MyThemeData.colorPrimaryDark:
                    MyThemeData.colorYellow
                ),),
                Icon(Icons.done, size: 30,
                  color: provider.mode==ThemeMode.dark? MyThemeData.colorPrimaryDark:
                Colors.transparent,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

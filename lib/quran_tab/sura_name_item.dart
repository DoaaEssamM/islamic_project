import 'package:flutter/material.dart';
import 'package:islamic/my_theme.dart';
import 'package:islamic/sura_details/sura_details.dart';

class SuraNameItem extends StatelessWidget {
String name;
int index;
SuraNameItem(this.name, this.index);
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.pushNamed(context,
            SuraDetailsScreen.routeName,
            arguments: SuraDetailsArgs(name, index) );
      },
      child: Text(name,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(color: MyThemeData.colorBlack),),
    );
  }
}
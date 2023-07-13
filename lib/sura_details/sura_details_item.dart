import 'package:flutter/material.dart';
import 'package:islamic/my_theme.dart';

class SuraDetailsItem extends StatelessWidget {
  String aya;
  SuraDetailsItem(this.aya);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(aya,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
        fontSize: 20,
          color: MyThemeData.colorBlack,

      ),
      ),
    );
  }
}

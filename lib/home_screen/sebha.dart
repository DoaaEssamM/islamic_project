import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic/my_theme.dart';
import 'package:islamic/provider/my_provider.dart';
import 'package:provider/provider.dart';
class SebhaTab extends StatefulWidget {

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int sebhaCounter =0;
  int tsbehatCounter =0;
  List<String> tsbehat = ['سبحان الله','الحمد لله','لا إله إلا الله','الله أكبر','لا حولَ ولا قوةَ إلا بالله العلي العظيم'];
  double angle =0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    MyProvider provider = Provider.of<MyProvider>(context);
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: height * 0.45,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  left: width * 0.45,
                  child: Image.asset(
                    'assets/images/head_sebha.png',
                    fit: BoxFit.cover,
                    width: width * 0.2,
                    height: height * 0.1,
                  ),
                ),
                Positioned(
                    top: height * 0.08,
                    child: Transform.rotate(
                      angle: angle,
                      child: Image.asset(
                        'assets/images/body_sebha.png',
                      ),
                    )),
              ],
            ),
          ),
          Text(
              AppLocalizations.of(context)!.tasbehat,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(30),
              color: provider.mode == ThemeMode.light? MyThemeData.colorGold.withOpacity(0.5)
                  :MyThemeData.colorPrimaryDark
            ),
            child: Text(sebhaCounter.toString(),
            style:provider.mode == ThemeMode.light? Theme.of(context).textTheme.subtitle1?.copyWith(
              color: MyThemeData.colorBlack):Theme.of(context).textTheme.subtitle1?.copyWith(
                color: MyThemeData.colorWhite),),
          ),
          SizedBox(height: 15,),
          InkWell(
            onTap:(){
              angle = angle+20;
              if(sebhaCounter==33){
                sebhaCounter=0;
                if(tsbehatCounter==tsbehat.length+1){
                  tsbehatCounter=0;
                }else{
                  tsbehatCounter++;
                }
              }else{
                sebhaCounter++;
              }
              setState(() {

              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(30),
                  color: provider.mode == ThemeMode.light? MyThemeData.colorGold
                      :MyThemeData.colorYellow),
              child:
              Text(tsbehat[tsbehatCounter],
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: provider.mode == ThemeMode.light? MyThemeData.colorWhite:MyThemeData.colorBlack,
                  fontWeight: FontWeight.bold
              )),
            ),
          )

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/hadeth_details/hadeth_details.dart';
import 'package:islamic/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../provider/my_provider.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethData> Ahadeth = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    if (Ahadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/ahadeth_main_bg.png'),
        Divider(
          color: MyThemeData.colorGold,
          thickness: 3,
        ),
        Text(
    AppLocalizations.of(context)!.ahadeth,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color:provider.mode==ThemeMode.light? MyThemeData.colorBlack: MyThemeData.colorWhite),
          textAlign: TextAlign.center,
        ),
        Divider(
          color: MyThemeData.colorGold,
          thickness: 3,
        ),
        Ahadeth.isEmpty
            ?Center(child: CircularProgressIndicator())
            : Expanded(
                child: ListView.separated(
                    separatorBuilder: (context, index) => Divider(
                          color: MyThemeData.colorGold,
                        ),
                    itemCount: Ahadeth.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, HadethDetailsScreen.routeName,
                          arguments: Ahadeth[index]);
                        },
                        child: Text(
                          Ahadeth[index].title,
                          textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                color:provider.mode==ThemeMode.light? MyThemeData.colorBlack: MyThemeData.colorWhite),
                        ),
                      );
                    }),
              )
      ],
    );
  }

  void loadHadethFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> AllAHadeth = content.trim().split('#\r\n');
    for (int i = 0; i < AllAHadeth.length; i++) {
      String hadeth = AllAHadeth[i];
      List<String> HadethLines = hadeth.split('\n');
      String title = HadethLines[0];
      HadethLines.removeAt(0);
      HadethData hadethData = HadethData(title, HadethLines);
      Ahadeth.add(hadethData);
    }
    setState(() {

    });
  }
}

class HadethData {
  String title;
  List<String> content;
  HadethData(this.title, this.content);
}

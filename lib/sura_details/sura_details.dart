import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/my_theme.dart';
import 'package:islamic/sura_details/sura_details_item.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetails';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses =[];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        fit: BoxFit.fitWidth,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            '${args.Suraname}',
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: verses.isEmpty?Center(child: CircularProgressIndicator()):
        ListView.separated(
          separatorBuilder: (context,index) => Divider(
            color: MyThemeData.colorGold,
            indent: 40,
            endIndent: 40,
          ),
            itemCount: verses.length,
            itemBuilder: (_,index){
          return SuraDetailsItem(verses[index]);
        }),
      )
    ]);
  }

  void loadFile(int index) async {
    String content = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String> lines = content.split('\n');
    verses=lines;
    setState(() {

    });
  }
}

class SuraDetailsArgs {
  String Suraname;
  int index;

  SuraDetailsArgs(this.Suraname, this.index);
}

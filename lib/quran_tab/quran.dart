import 'package:flutter/material.dart';
import 'package:islamic/my_theme.dart';
import 'package:islamic/quran_tab/sura_name_item.dart';

class QuranTab extends StatelessWidget {
  List<String> surasName= ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Image.asset('assets/images/quran_main_bg.png'),
          Divider(
            color: MyThemeData.colorGold,
            indent: 30,
            thickness: 2,
            endIndent:30 ,
          ),
          Text('اسم السورة', style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),
          Divider(
            color: MyThemeData.colorGold,
            indent: 30,
            thickness: 2,
            endIndent:30 ,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                color: MyThemeData.colorGold,
                indent: 30,
                thickness: 2,
                endIndent:30 ,

              ),
              itemCount: surasName.length,
                itemBuilder: (_,index){
              return SuraNameItem(surasName[index],index);
            }),
          )
        ],
      ),
    );
  }
}
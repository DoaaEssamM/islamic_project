import 'package:flutter/material.dart';
import 'package:islamic/home_screen/ahadeth.dart';
import 'package:islamic/home_screen/quran.dart';
import 'package:islamic/home_screen/radio.dart';
import 'package:islamic/home_screen/sebha.dart';
import 'package:islamic/my_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex:currentIndex,
            onTap: (index){
              currentIndex = index;
              setState(() {

              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/quran.png'),size: 30,), label: 'quran', ),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/sebha.png'),size: 30), label: 'sebha', ),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/radio.png'),size: 30,), label: 'radio',),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/ahadeth.png'),size: 30,), label: 'ahadeth',),
          ],),
          body: tabs[currentIndex],
        ),
      ],
    );
  }
  List<Widget> tabs=[
    QuranTab(),
    RadioTab(),
    SebhaTab(),
    AhadethTab(),

  ];
}

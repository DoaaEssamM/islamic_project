import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class SebhaTab extends StatelessWidget {
  const SebhaTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
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
                    child: Image.asset(
                      'assets/images/body_sebha.png',
                    )),
              ],
            ),
          ),
          Text(
              AppLocalizations.of(context)!.tasbehat
          )
        ],
      ),
    );
  }
}

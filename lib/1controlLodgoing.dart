import 'package:flutter/material.dart';
import 'package:spajam_preapp/0control.dart';
import 'package:spajam_preapp/0inputForm.dart';

class ControlLodgoing extends StatelessWidget {
  const ControlLodgoing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double? iconSize = 20;
    const Color iconColor = Colors.white70;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 91, 0, 86),
        body: Column(
          children: [
            const Control(),
            const InputForm("訪問者数", Icon(Icons.person, size: iconSize, color: iconColor)),
            const InputForm("日付を選択", Icon(Icons.calendar_month, size: iconSize, color: iconColor)),
            const InputForm("場所を選択", Icon(Icons.hotel, size: iconSize, color: iconColor)),
          ],
        ),
      ),
    );
  }
}

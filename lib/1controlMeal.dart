import 'package:flutter/material.dart';
import 'package:spajam_preapp/0control.dart';
import 'package:spajam_preapp/0inputForm.dart';

class ControlMeal extends StatelessWidget {
  const ControlMeal({Key? key}) : super(key: key);

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
            const InputForm("食堂数", Icon(Icons.person, size: iconSize, color: iconColor)),
            const InputForm("日付を選択", Icon(Icons.calendar_month, size: iconSize, color: iconColor)),
            const InputForm("時間を選択", Icon(Icons.access_time, size: iconSize, color: iconColor)),
            const InputForm("場所を選択", Icon(Icons.restaurant_menu_outlined, size: iconSize, color: iconColor))
          ],
        ),
      ),
    );
  }
}
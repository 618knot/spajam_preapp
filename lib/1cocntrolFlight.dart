import 'package:flutter/material.dart';
import 'package:spajam_preapp/0control.dart';
import 'package:spajam_preapp/0inputForm.dart';

class ControlFlight extends StatelessWidget {
  const ControlFlight({Key? key}) : super(key: key);

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
            const InputForm("出発地点を選択", Icon(Icons.room, size: iconSize, color: iconColor)),
            const InputForm("目的地を選択", Icon(Icons.airplanemode_active, size: iconSize, color: iconColor)),
            const InputForm("日付を選択", Icon(Icons.calendar_month, size: iconSize, color: iconColor))
          ],
        ),
      ),
    );
  }
}
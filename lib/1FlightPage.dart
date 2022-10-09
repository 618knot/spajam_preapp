import 'package:flutter/material.dart';
import 'package:spajam_preapp/0control.dart';
import 'package:spajam_preapp/0inputForm.dart';
import 'package:spajam_preapp/0bottomSheet.dart' as btm;
import 'contents.dart';

class FlightPage extends StatelessWidget {
  const FlightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double? iconSize = 20;
    const Color iconColor = Colors.white70;
    Contents contents = Contents();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 91, 0, 86),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: const [
                  Control(),
                  InputForm("訪問者数",
                      Icon(Icons.person, size: iconSize, color: iconColor)),
                  InputForm("出発地点を選択",
                      Icon(Icons.room, size: iconSize, color: iconColor)),
                  InputForm(
                      "目的地を選択",
                      Icon(Icons.airplanemode_active,
                          size: iconSize, color: iconColor)),
                  InputForm(
                      "日付を選択",
                      Icon(Icons.calendar_month,
                          size: iconSize, color: iconColor)),
                ],
              ),
            ),
            btm.BottomSheet("目的地でフライトを検索", 0.6, contents.images, contents.title,
                contents.subtitle),
          ],
        ),
      ),
    );
  }
}

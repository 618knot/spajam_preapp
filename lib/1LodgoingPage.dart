import 'package:flutter/material.dart';
import 'package:spajam_preapp/0control.dart';
import 'package:spajam_preapp/0inputForm.dart';
import 'package:spajam_preapp/0bottomSheet.dart' as btm;
import 'contents.dart';

class LodgoingPage extends StatelessWidget {
  const LodgoingPage({Key? key}) : super(key: key);

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
                  InputForm("訪問者数", Icon(Icons.person, size: iconSize, color: iconColor)),
                  InputForm("日付を選択", Icon(Icons.calendar_month, size: iconSize, color: iconColor)),
                  InputForm("場所を選択", Icon(Icons.hotel, size: iconSize, color: iconColor)),
                ],
              ),
            ),
            btm.BottomSheet("目的地で物件を検索", 0.65, contents.images, contents.title,
                contents.subtitle),
          ],
        ),
      ),
    );
  }
}

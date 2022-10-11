import 'package:flutter/material.dart';
import 'package:spajam_preapp/0control.dart';
import 'package:spajam_preapp/0inputForm.dart';
import 'package:spajam_preapp/0bottomSheet.dart' as btm;
import '1contents.dart';

class LodgoingPage extends StatelessWidget {
  const LodgoingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double? iconSize = 20;
    const Color iconColor = Colors.white70;
    Contents contents = Contents();

    return btm.BottomSheet(
        "目的地で物件を検索", 0.65, contents.images, contents.title, contents.subtitle);
  }
}

import 'package:flutter/material.dart';
import 'package:spajam_preapp/0control.dart';
import 'package:spajam_preapp/0inputForm.dart';
import 'package:spajam_preapp/0bottomSheet.dart' as btm;
import '1contents.dart';

class FlightPage extends StatelessWidget {
  const FlightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Contents contents = Contents();

    return btm.BottomSheet(
        "目的地でフライトを検索", 0.6, contents.images, contents.title, contents.subtitle);
  }
}

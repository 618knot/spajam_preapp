import 'package:flutter/material.dart';
import '1FlightPage.dart';
import '1LodgoingPage.dart';
import '1MealPage.dart';
import '0bottomSheet.dart' as btm;
import 'contents.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Contents contents = Contents();
    List<Widget> images = contents.images;
    return MaterialApp(
      title: 'Spajam Demo',
      home: const FlightPage(),
    );
  }
}

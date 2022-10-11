import 'package:flutter/material.dart';
import '1FlightBottom.dart';
import '1LodgoingBottom.dart';
import '1MealBottom.dart';
import '0bottomSheet.dart' as btm;
import '1contents.dart';
import '0control.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Contents contents = Contents();
    ControlState obj = ControlState();

    List<Widget> images = contents.images;
    return MaterialApp(
      title: 'Spajam Demo',
      // initialRoute: '/Flight',
      // routes: {
      //   '/Flight':(context) => FlightPage(),
      //   '/Lodgoing':(context) => LodgoingPage(),
      //   '/Meal':(context) => MealPage()
      // },
      home: Control()
    );
  }
}

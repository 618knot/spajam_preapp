import 'package:flutter/material.dart';
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
      home: Control()
    );
  }
}

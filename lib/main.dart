import 'package:flutter/material.dart';
import '1cocntrolFlight.dart';
import '1controlLodgoing.dart';
import '1controlMeal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spajam Demo',
      home: const ControlMeal(),
    );
  }
}

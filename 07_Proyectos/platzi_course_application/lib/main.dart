import 'package:flutter/material.dart';
import 'package:platzi_course_application/widget/HomeTrips.dart';
import 'package:platzi_course_application/widget/MenuTrips.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MenuTrips(),
    );
  }
}
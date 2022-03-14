import 'package:drawer_application/src/home.dart';
import 'package:drawer_application/src/screens/battery.dart';
import 'package:drawer_application/src/screens/setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
      routes: <String, WidgetBuilder>{
        Setting.routeName: (BuildContext context) => Setting(),
        Battery.routeName: (BuildContext context) => Battery(),
      },
    )
  );
}
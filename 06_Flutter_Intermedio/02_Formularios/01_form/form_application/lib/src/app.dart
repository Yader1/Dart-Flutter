import 'package:flutter/material.dart';
import 'package:form_application/src/screens/login_screen.dart';

class App extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return new MaterialApp(
  home: Scaffold(
      body: Login(),
    )
 );
 }
}
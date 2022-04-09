import 'package:flutter/material.dart';
import 'package:login_bloc_applicatio/src/Screens/login.dart';

class App extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return new MaterialApp(
    home: Scaffold(
      body: LoginScreen()
    ),
 );
 }
}
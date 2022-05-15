import 'package:flutter/material.dart';
import 'package:login_bloc_applicatio/src/Screens/login.dart';
import 'package:login_bloc_applicatio/src/bloc/provider.dart';

class App extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return Provider(
    child: MaterialApp(
        home: Scaffold(
          body: LoginScreen()
        ),
    ),
  );
 }
}
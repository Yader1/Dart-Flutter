import 'package:flutter/material.dart';
import 'package:flutter_chat_firebase/screens/welcome_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Welcome(),
      //Dejamos definido el tema de la aplicacion
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54), 
        ),
      )
    )
  );
}
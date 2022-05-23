import 'package:flutter/material.dart';
import 'package:flutter_chat_firebase/screens/login_screen.dart';
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
      ),
      //Definir pagina principal
      initialRoute: Welcome.routeName,
      //Ruta de navegacion
      routes: <String, WidgetBuilder>{
        login.routeName: (BuildContext context) => login(),
        Welcome.routeName: (BuildContext context) => Welcome()
      }
    )
  );
}
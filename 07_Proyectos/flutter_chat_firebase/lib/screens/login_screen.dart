import 'package:flutter/material.dart';

class login extends StatefulWidget {
  //Definiendo identificador de la Ruta
  static const String routeName = '/login';
  @override
  _loginState createState() => new _loginState();
 }
class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title:Text("Login"))
   );
  }
}
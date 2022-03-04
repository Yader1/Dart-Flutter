import 'package:flutter/material.dart';

class MyButton extends StatefulWidget{
  @override
  _MyButtonState createState() => _MyButtonState();

}

//Creamos una clase para manejar el estado del widget
class _MyButtonState extends State<MyButton>{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(
      title: Text("Stateful Widget"),
    ));
  }
}
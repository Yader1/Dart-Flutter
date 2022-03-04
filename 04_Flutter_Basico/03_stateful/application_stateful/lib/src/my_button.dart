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
      backgroundColor: Colors.orangeAccent,
    ),
    body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text("Prueva", style: TextStyle(fontSize: 20.0)),
          RaisedButton(child: Text("Actualizar"), onPressed: (){},)
        ],)
      )
    ),);
  }
}
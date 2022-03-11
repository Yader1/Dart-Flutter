import 'package:flutter/material.dart';

//Creamos un widget reutilizable
class MyCard extends StatelessWidget{
  final Widget title;
  final Widget icon;

  MyCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context){
    //Creamos una tarjeta que contendra lo que se mostrara
    return Card(
      child: Container(
        padding: EdgeInsets.all(20.0),
          child: Column(
          children: <Widget>[
            this.title, 
            this.icon
        ],
      ),
      )
    );
  }  
}
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String inputText;

  const AppTextField({required this.inputText});

 @override
 Widget build(BuildContext context) {
    //Widget de campo de datos
  return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        hintText: inputText,
        //Diseño circular del campo de texto
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0))
        ),
        //Diseño de color del border del campo de texto
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
          borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2),
        ),
      )
    );
 }
}
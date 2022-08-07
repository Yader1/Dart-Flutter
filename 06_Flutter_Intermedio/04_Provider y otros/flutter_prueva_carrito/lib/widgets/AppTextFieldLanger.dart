import 'package:flutter/material.dart';

class AppTextFieldLanger extends StatelessWidget {
  final String inputText;
  //Para passwordField
  final bool? obscureText;
  //Controlador
  final TextEditingController controller;

  const AppTextFieldLanger({Key? key, required this.inputText, this.obscureText, required this.controller }) : super(key: key);

 @override
 Widget build(BuildContext context) {
    //Widget de campo de datos
  return TextFormField(
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        filled: true,
        fillColor: Color.fromARGB(255, 240, 239, 239),
        hintText: inputText,
        //Diseño circular del campo de texto
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
        //Diseño de color del border del campo de texto
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
          borderSide: BorderSide(width: 2.0, color: Colors.white),
        ),
      ),
      //Poner los textos de campo en el centro
      textAlign: TextAlign.start,
      //Para password, dejarlo oculto la contraseña
      obscureText: obscureText ?? false,
    );
 }
}
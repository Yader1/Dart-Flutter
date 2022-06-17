import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String inputText;
  //Variable que recibe los datos que el usuario envia
  final ValueChanged<String?> onSaved;
  //Para passwordField
  final bool obscureText;
  //Control del textFiel
  final TextEditingController controller;
  //Denir donde se ubicara el focus
  late FocusNode? focusNode;
  //Validar el texto
  final FormFieldValidator<String?> validator;

  AppTextField({required this.inputText, required this.onSaved, required this.obscureText, required this.controller, this.focusNode, required this.validator});

 @override
 Widget build(BuildContext context) {
    //Widget de campo de datos
  return TextFormField(
      validator: validator,
      focusNode: focusNode,
      controller: controller,
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
      ),
      onSaved: onSaved,
      //Poner los textos de campo en el centro
      textAlign: TextAlign.center,
      //Para password, dejarlo oculto la contraseña
      obscureText: obscureText == null ? false : obscureText,
    );
 }
}
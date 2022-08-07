import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  Color? color;
  Color? colorText;
  VoidCallback? onPressed;
  final String name;

  //Button de base, resive el color del button, el texto que mostrara el button y el evento a realizar
  AppButton({required this.color, this.onPressed, required this.name, required this.colorText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.2),
      //Propiedades de estilo del button
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: SizedBox(
          height: 40.0,
          child: FlatButton(
            child: Text(name, style: TextStyle(color: colorText)),
            onPressed: onPressed,
          ),
        ),
      ),
    );
  }
}
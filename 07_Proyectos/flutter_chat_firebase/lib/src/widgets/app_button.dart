import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final MaterialAccentColor color;
  final VoidCallback onPressed;
  final String name;
  
  //Button de base, resive el color del button, el texto que mostrara el button y el evento a realizar
  AppButton({required this.color, required this.onPressed, required this.name});

 @override
 Widget build(BuildContext context) {
 return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      //Propiedades de estilo del button
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: SizedBox(
          height: 43.0,
          child: FlatButton(
            child: Text(name),
            onPressed: onPressed,
          ),
        ),
      ),
    );
 }
}
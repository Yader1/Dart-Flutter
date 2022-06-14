import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   //Propiedad para el titulo mas el icono a lado.
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset('images/logo.png'),
        Text('Flutter Chat',
            style: TextStyle(
              fontSize: 45.0,
              fontWeight: FontWeight.w700
            )
        )
      ]
    );
 }
}
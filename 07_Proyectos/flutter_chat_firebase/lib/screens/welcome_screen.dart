import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => new _WelcomeState();
 }
class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Container(
      //Colocamos todos nuestros widget
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //Propiedad para el titulo mas el icono a lado.
          Row(
            children: <Widget>[]
          )
        ]
      )
    )

   );
  }
}
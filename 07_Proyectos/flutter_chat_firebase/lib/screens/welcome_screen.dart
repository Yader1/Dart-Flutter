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
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      //Colocamos todos nuestros widget
      child: Column(
        //Cntrar y ocupar todo el ancho de la pantalla
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //Propiedad para el titulo mas el icono a lado.
          Row(
            children: <Widget>[
              Image.asset('images/logo.png'),
              Text('Flutter Chat',
                  style: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w700
                  )
              )
            ]
          )
        ]
      )
    )

   );
  }
}
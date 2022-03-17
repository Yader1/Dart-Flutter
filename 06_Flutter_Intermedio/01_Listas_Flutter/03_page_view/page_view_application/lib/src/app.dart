import 'package:flutter/material.dart';

class App extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return Container(
    child: PageView(
      children: <Widget>[
        Container( color: Colors.pink ),
        Container( color: Colors.blueAccent ),
        Container( color: Colors.purpleAccent ),
      ]
    )
 );
 }
}
import 'package:flutter/material.dart';

class App extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return Container(
    /* Page con tres paginas
    child: PageView(
      children: <Widget>[
        Container( color: Colors.pink ),
        Container( color: Colors.blueAccent ),
        Container( color: Colors.purpleAccent ),
      ]
     );
    */
    child: PageView.builder(itemBuilder: (context, i){
      return Container(
        color: i % 2 == 0 ? Colors.blueAccent : Colors.redAccent
      );
    })
    );
 }
}
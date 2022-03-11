import 'package:flutter/material.dart';

class SegundoTabs extends StatelessWidget {
  @override
    @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.deepPurple,
     body: Container(
       child: (
         Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Icon(
                 Icons.watch_later,
                 size:160.0,
                 color: Colors.white
               ),
               Text("Segundo Tab",
               style: TextStyle(color: Colors.white,fontSize: 20.0),)
             ]
           ),
         )
       ),
     ),
   );
  }
}
import 'package:flutter/material.dart';

class PrimeroTabs extends StatelessWidget {
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
                 Icons.alarm,
                 size:160.0,
                 color: Colors.white
               ),
               Text("Primera Tab",
               style: TextStyle(color: Colors.white,fontSize: 20.0),)
             ]
           ),
         )
       ),
     ),
   );
  }
}
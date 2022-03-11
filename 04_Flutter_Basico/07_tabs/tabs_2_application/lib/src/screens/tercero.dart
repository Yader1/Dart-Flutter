import 'package:flutter/material.dart';

class TerceroTabs extends StatelessWidget {
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
                 Icons.airplanemode_active,
                 size:160.0,
                 color: Colors.white
               ),
               Text("Tercero Tab",
               style: TextStyle(color: Colors.white,fontSize: 20.0),)
             ]
           ),
         )
       ),
     ),
   );
  }
}
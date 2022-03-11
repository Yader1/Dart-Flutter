import 'package:flutter/material.dart';
import 'package:tabs_2_application/src/screens/primero.dart';
import 'package:tabs_2_application/src/screens/segundo.dart';
import 'package:tabs_2_application/src/screens/tercero.dart';

class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => new _MyTabsState();
 }

class _MyTabsState extends State<MyTabs> {
  @override
  Widget build(BuildContext context) {
   return 
   DefaultTabController(
     //Tamaño de tabs
     length: 3,
     child: Scaffold(
      appBar: AppBar(title:Text("Demo Bottom Navigation Bar"),),
     body: TabBarView(children: <Widget>[PrimeroTabs(), SegundoTabs(), TerceroTabs()]
     ),
     bottomNavigationBar: 
     Material(
       color: Colors.blueAccent,
       child: TabBar(tabs: <Tab>[
         Tab(icon: Icon(Icons.alarm)),
         Tab(icon: Icon(Icons.watch_later)),
         Tab(icon: Icon(Icons.airplanemode_active))
       ]),
     ),
    )
   );
  }
}
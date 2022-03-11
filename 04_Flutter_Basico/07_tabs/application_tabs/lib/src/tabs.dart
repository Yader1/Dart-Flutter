import 'package:application_tabs/src/screens/contact.dart';
import 'package:application_tabs/src/screens/home.dart';
import 'package:application_tabs/src/screens/video.dart';
import 'package:flutter/material.dart';

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
     child:
     Scaffold(
      appBar: AppBar(title:Text("Video Tabs"),
      bottom: TabBar(tabs: <Widget>[
        Tab(icon: Icon(Icons.home),),
        Tab(icon: Icon(Icons.ondemand_video),),
        Tab(icon: Icon(Icons.contacts,))
     ],),
     ),
     body: TabBarView(children: <Widget>[
       Home(), Video(), Contact()
     ]),
    )
   );
  }
}
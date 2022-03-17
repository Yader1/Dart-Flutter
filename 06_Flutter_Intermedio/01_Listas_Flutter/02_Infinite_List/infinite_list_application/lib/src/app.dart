import 'package:flutter/material.dart';

class InfiniteList extends StatefulWidget {
  @override
   InfiniteListState createState() => new  InfiniteListState();
 }

class  InfiniteListState extends State <InfiniteList> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title:Text("Infinite List"))
   );
  }
}
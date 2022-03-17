import 'package:flutter/material.dart';
import 'dart:math';

class InfiniteList extends StatefulWidget {
  @override
   InfiniteListState createState() => new  InfiniteListState();
 }

class  InfiniteListState extends State <InfiniteList> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title:Text("Infinite List")),
     body: ListView.builder(itemBuilder: (context, i){
       return ListTile(
         leading: Icon(Icons.shop_rounded),
         title: Text('Producto $i'),
         subtitle: Text('Precio: ${Random().nextInt(100)} USD'),
       );
     }),
   );
  }
}
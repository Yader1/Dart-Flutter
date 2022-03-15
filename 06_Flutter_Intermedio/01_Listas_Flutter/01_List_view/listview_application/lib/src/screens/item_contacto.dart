import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return ListTile(
    leading: CircleAvatar(child: Text("Y"),),
    title: Text("Yader Mejia"),
    subtitle: Text("yadermejiac123@gmail.com"),
 );
 }
}
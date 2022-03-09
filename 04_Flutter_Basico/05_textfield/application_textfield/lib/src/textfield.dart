import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField ({ Key? key }) : super(key: key);

  _MyTextField createState() => _MyTextField();
}

class _MyTextField extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("TextField Widget")
      ),
      body: Container(
        child: Column(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:platzi_course_application/widget/CardImage.dart';

class CardImageItem extends StatelessWidget {
  const CardImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/axp.jpg"),
          CardImage("assets/img/brianda.jpg"),
          CardImage("assets/img/hunter.jpg"),
          CardImage("assets/img/joshua.jpg"),
          CardImage("assets/img/mario.jpg"),
          CardImage("assets/img/op.jpg"),
        ],
      ),
    );
  }
}
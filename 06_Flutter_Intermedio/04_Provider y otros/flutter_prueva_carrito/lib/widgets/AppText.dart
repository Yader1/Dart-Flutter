import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  Color? color;

  final String text;
  double size;
  double height;

  AppText({
    Key? key,
    this.color = const Color(0xFFccc7c5),
    this.size = 12,
    this.height = 1.2,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        height: height,
        fontFamily: 'Roboto',
      ),
      textAlign: TextAlign.center,
    );
  }
}
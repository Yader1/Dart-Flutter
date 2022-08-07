import 'package:flutter/material.dart';

class AppTextBig extends StatelessWidget {
  Color? color;

  final String text;
  double size;
  double height;

  AppTextBig({
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
        fontWeight: FontWeight.bold,
        fontSize: size,
        height: height,
        fontFamily: 'Roboto',
      ),
      textAlign: TextAlign.center,
    );
  }
}
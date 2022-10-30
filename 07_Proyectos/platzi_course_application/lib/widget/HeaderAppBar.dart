import 'package:flutter/material.dart';
import 'package:platzi_course_application/widget/CardImageList.dart';
import 'package:platzi_course_application/widget/GradientBack.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido"),
        CardImageItem(),
      ],
    );
  }
}
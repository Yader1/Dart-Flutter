import 'package:flutter/material.dart';
import 'package:movie_app/model/Media.dart';
import 'dart:ui' as ui;

class MediaDetail extends StatelessWidget {
  final Media media;
  MediaDetail(this.media);

 @override
 Widget build(BuildContext context) {
  return new Scaffold(
    //Widget para pobñar otros widget encima de otros
    body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        //Img de fondo
        new Image.network(
          //getPosterUrl
          media.getBackDropUrl(),
          fit: BoxFit.cover,
        ),
        //Decenfoque de la imagen de fondo
        new BackdropFilter(
          filter: new ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          //Efecto opaco
          child: new Container(
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      ]
    ),
 );
 }
}
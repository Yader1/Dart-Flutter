import 'package:flutter/material.dart';
import 'package:movie_app/model/Media.dart';

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
          media.getBackDropUrl(),
          fit: BoxFit.cover,
          
        )
      ]
    ),
 );
 }
}
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
        //Este widget nos permite hacer scroll
        new SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[
                new Container( 
                  alignment: Alignment.center,
                  child: new Container( width: 390.0, height: 390.0,),
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    image: new DecorationImage(image: new NetworkImage(
                      media.getPosterUrl()
                    ))
                  ),
                ),
              ]
            )
          )
        ),
      ]
    ),
 );
 }
}
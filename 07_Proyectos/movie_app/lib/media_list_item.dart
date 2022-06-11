import 'package:flutter/material.dart';
import 'package:movie_app/model/Media.dart';

class MediaListItem extends StatelessWidget {
  late final Media media;
  MediaListItem(this.media);

 @override
 Widget build(BuildContext context) {
  // ignore: unnecessary_new
  return new Card(
  child: new Column(
    children: <Widget>[
      Container(
        // ignore: unnecessary_new
        child: new Stack(
          children: <Widget>[
            new FadeInImage.assetNetwork(
            placeholder: "assets/placeholder.jpg", 
            image: media.getBackDropUrl(),
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200.0,
            fadeInDuration: new Duration(milliseconds: 40),
            ),
            new Positioned(
              left: 0.0,
              bottom: 0.0,
              right: 0.0,
              child: new Container(
                decoration: new BoxDecoration(
                  //Definimos color de opacidad
                  color: Colors.grey[900]?.withOpacity(0.5),
                ),
                constraints: new BoxConstraints.expand(
                  height: 55.0
                ),
              ) 
            ),
            //Titulo de las Peliculas
            new Positioned(
              left: 10.0,
              bottom: 10.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    child: new Text(media.title,
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                  ),
                  new Container(
                    width: 250.0,
                    padding: EdgeInsets.only(top: 4.0),
                    child: new Text(media.getGenres(),
                    style: new TextStyle(color: Colors.white),
                    maxLines: 1,
                    //Si supera del campo de texto se mostrara puntos suspencivos
                    overflow: TextOverflow.ellipsis,
                    )
                  )
                ]
              )
            ),
            //Mostrar las votaciones
            new Positioned(
              right: 5.0,
              bottom: 10.0,
              child: new Column(
                children: <Widget>[
                  //Apilamos widget uno de otros
                  Row(
                    children: <Widget>[
                      new Text(media.voteAverage.toString()),
                      new Container(width: 4.0,),
                      new Icon(Icons.star, color: Colors.white, size: 16.0,)
                    ]
                  ),
                  new Container(height: 4.0),
                   Row(
                    children: <Widget>[
                      new Text(media.getReleaseDateYear().toString()),
                      new Container(width: 4.0,),
                      new Icon(Icons.date_range, color: Colors.white, size: 16.0,)
                    ]
                  ),
                ]
              )
            )
          ],
        )
      )
    ],
  ),);
 }
}
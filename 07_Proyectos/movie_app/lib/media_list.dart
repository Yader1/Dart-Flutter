//Re renderizar lista 
import 'package:flutter/material.dart';
import 'package:movie_app/model/Media.dart';
import 'package:movie_app/media_list_item.dart';
import 'package:movie_app/common/MediaProvider.dart';
import 'package:movie_app/media_detail.dart';

class MediaList extends StatefulWidget {
  late final MediaProvider provider;
  late String category;
  MediaList(this.provider, this.category);

  @override
  _MediaListState createState() => new _MediaListState();
 }
class _MediaListState extends State<MediaList> {

  List<Media> _media = [];
  @override
  void initState() {
    super.initState();
    loadMovies();
  }

  @override
  void didUpdateWidget(MediaList oldWidget){
    if(oldWidget.provider.runtimeType != widget.provider.runtimeType){
      _media = [];
      loadMovies();
    }
    super .didUpdateWidget(oldWidget);
  }

  void loadMovies() async{ 
    var media = await widget.provider.fechMedia(widget.category);
    setState(() {
      _media.addAll(media);
    });
  }

  @override
  Widget build(BuildContext context) {
   return new Container(
     child: new ListView.builder(
       itemCount: _media.length,
       itemBuilder: (BuildContext context, int index){
          //Traemos una imagen por medio de una URL
        return new FlatButton(
          padding: EdgeInsets.all(1),
          onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context){
              return new MediaDetail(_media[index]);
            }));
          }, 
          child: MediaListItem(_media[index])
        );
       }
     ),
    );
  }
}
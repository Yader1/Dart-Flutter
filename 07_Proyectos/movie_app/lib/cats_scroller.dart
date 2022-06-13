import 'package:flutter/material.dart';
import 'package:movie_app/common/MediaProvider.dart';
import 'package:movie_app/model/Cast.dart';

class CatsScroller extends StatefulWidget {
  final MediaProvider provider;
  final int mediaId;

  CatsScroller(this.provider, this.mediaId);
  @override
  _CatsScrollerState createState() => new _CatsScrollerState();
 }
class _CatsScrollerState extends State<CatsScroller> {

  @override
  void initState() {
    super.initState();
    loadCasts();
  }
  final List<Cast> _casts = <Cast>[];

  void loadCasts() async{
   var results = await widget.provider.fechCast(widget.mediaId);

   setState(() {
    _casts.addAll(results);
   });
  }

  Widget _builderCasts(BuildContext context, int index){
    var cast = _casts[index];
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(children: <Widget>[
        CircleAvatar(
          backgroundImage: new NetworkImage(cast.getCastUrl()),
        )
      ],),
    );
  }
  @override
  Widget build(BuildContext context) {
   return new Column(
    children: <Widget>[
      SizedBox.fromSize(
        size: const Size.fromHeight(180.0),
        child: ListView.builder(
          itemBuilder: _builderCasts,
          itemCount: _casts.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(top: 12.0, left: 20.0),
          ),
      )
    ]
   );
  }
}
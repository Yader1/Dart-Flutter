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
  @override
  Widget build(BuildContext context) {
   return new Container(
  
   );
  }
}
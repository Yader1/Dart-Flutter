import 'package:flutter/material.dart';
import 'package:movie_app/common/MediaProvider.dart';

class CatsScroller extends StatefulWidget {
  final MediaProvider provider;
  final int mediaId;

  CatsScroller(this.provider, this.mediaId);
  @override
  _CatsScrollerState createState() => new _CatsScrollerState();
 }
class _CatsScrollerState extends State<CatsScroller> {
  @override
  Widget build(BuildContext context) {
   return new Container(
  
   );
  }
}
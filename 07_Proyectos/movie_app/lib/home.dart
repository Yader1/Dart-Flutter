import 'package:flutter/material.dart';
import 'package:movie_app/media_list.dart';
import 'package:movie_app/common/MediaProvider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
 }
class _HomeState extends State<Home> {
  final MediaProvider movieProvider = new MovieProvider();
  final MediaProvider showProvider = new ShowProvider();

  MediaType mediaType = MediaType.movie;
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
     appBar: AppBar(title:Text("Flutter Movie"),
     actions: <Widget>[
       //TODO: Button de busqueda
       new IconButton(
         icon: new Icon(Icons.search, color: Colors.white),
         onPressed: (){}
       )
     ],),
     //TODO: Menu lateral
     drawer: new Drawer(
      child: new ListView(
        children: <Widget>[
          new DrawerHeader(child: new Material()),
      //Primer titulo del menu
      new ListTile(
        title: Text("Peliculas"),
        selected: mediaType == MediaType.movie,
        trailing: new Icon(Icons.local_movies),
        onTap: (){
          _changeMediaType(MediaType.movie);
          Navigator.of(context).pop();
        }
      ),
      //Colocamos un espacio
      new Divider(
        height: 5.0,
      ),
      new ListTile(
        title: Text("Television"),
        selected: mediaType == MediaType.show,
        trailing: new Icon(Icons.live_tv),
        onTap: (){
          _changeMediaType(MediaType.show);
          Navigator.of(context).pop();
        }
      ),
      new Divider(
        height: 5.0,
      ),
      new ListTile(
        title: Text("Cerrar"),
        trailing: new Icon(Icons.close),
        onTap: ()=> Navigator.of(context).pop(),
      ),
        ]
      )
     ),
     body: new PageView(
       children: <Widget>[
         new MediaList()
       ]
     ),

     /*TODO: Butones de navegacion inferior revisar
     bottomNavigationBar: new BottomNavigationBar(
      items: _getFooterItems(),
     ), */
   );
  }

  /*TODO: Revisar
  List<BottomNavigationBarItem> _getFooterItems(){
    return[
      BottomNavigationBarItem(
        icon: new Icon(Icons.thumb_up),  
        //title: new Text("Populares")
      ),
      
      new BottomNavigationBarItem(
        icon: new Icon(Icons.update),
        //title: new Text("Proximamente")
      ),
      
      new BottomNavigationBarItem(
        icon: new Icon(Icons.star),
        //title: Text("Mejor valorada")
      )
    ]; 
  }
  */

  void _changeMediaType(MediaType type){
    if(mediaType != type ){
      setState(() {
         mediaType = type;
      });
    }
  }
}
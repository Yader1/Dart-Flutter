import 'package:flutter/material.dart';
import 'package:movie_app/common/HttpHandler.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
 }
class _HomeState extends State<Home> {

  //Llamamos metodos de API
  @override
  void initState(){
    super.initState();
    _loadJson();
  }

  _loadJson() async{
    String data = await HttpHandler().fechMovie();
    print(data);
  }

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
        trailing: new Icon(Icons.local_movies),
      ),
      //Colocamos un espacio
      new Divider(
        height: 5.0,
      ),
      new ListTile(
        title: Text("Television"),
        trailing: new Icon(Icons.live_tv),
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
}
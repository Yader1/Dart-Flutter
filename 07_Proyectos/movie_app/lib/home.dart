import 'package:flutter/material.dart';
import 'package:movie_app/media_list.dart';
import 'package:movie_app/common/MediaProvider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
 }
class _HomeState extends State<Home> {
  @override
  void initState(){
    _pageController = new PageController();
    super.initState();
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final MediaProvider movieProvider = new MovieProvider();
  final MediaProvider showProvider = new ShowProvider();
  late PageController _pageController;
  int _page = 0;

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
       children: _getMediaList(),
       //Determinamos que pagina va estar visible en nuestro pageView
       controller: _pageController,
       onPageChanged: (int index){
        setState(() {
          _page = index;
        });
       },
     ),

     /*TODO: Butones de navegacion inferior revisar */
     bottomNavigationBar: new BottomNavigationBar(
      items: _getFooterItems(),
      onTap: _navigationTapped,
      currentIndex: _page,
     ),
   );
  }

  /*TODO: Revisar */
  List<BottomNavigationBarItem> _getFooterItems(){
    return mediaType == MediaType.show ?
    [
      BottomNavigationBarItem(
          icon: new Icon(Icons.thumb_up),
          label: 'Populares',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.update),
          label: 'En el aire',
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.star),
          label: 'Mejor valorada',
          backgroundColor: Colors.green,
        ),
    ]:
    [
      BottomNavigationBarItem(
          icon: new Icon(Icons.thumb_up),
          label: 'Populares',
          backgroundColor: Colors.blue,
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.update),
          label: 'Proximamente',
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.star),
          label: 'Mejor valorada',
          backgroundColor: Colors.green,
        ),
    ];
  }

  void _changeMediaType(MediaType type){
    if(mediaType != type ){
      setState(() {
         mediaType = type;
      });
    }
  }

  List<Widget> _getMediaList(){
    return (mediaType == MediaType.movie) ? <Widget>[
      new MediaList(movieProvider, "popular"),
      new MediaList(movieProvider, "upcoming"),
      new MediaList(movieProvider, "top_rated"),
    ]:
    <Widget>[
      new MediaList(showProvider, "popular"),
      new MediaList(showProvider, "on_the_air"),
      new MediaList(showProvider, "top_rated"),
    ];
  }

  void _navigationTapped(int page){
    _pageController.animateToPage(page, duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }
}
//Libreria que nos permitira hacer llamadas async
import "dart:async";
//Libreria que nos permitira hacer las llamadas principales con el alias http
import 'package:http/http.dart' as http;
//Libreria que nos proporciona un obj json
import 'dart:convert';
//Importamos libreria de la llave
import 'package:movie_app/common/Constant.dart';
//Importamos Media
import 'package:movie_app/model/Media.dart';

import 'package:movie_app/common/MediaProvider.dart';

class HttpHandler{
  //Metodo de inicializacion
  static final _httpHandler = new HttpHandler();

  //Definimos propiedades relacionada al URL
  final String _baseUrl = "api.themoviedb.org";
  final String _lenguaje = "es-ES";

  //Metodo encargado de retornar el obj.
  static HttpHandler get(){
    return _httpHandler;
  }

  //Metodo principal
  Future<dynamic> getJson(Uri uri) async{
    http.Response response = await http.get(uri);
    return json.decode(response.body);
  }

  //Llamada a los datos
  Future<List<Media>> fechMovie(){
    var uri = new Uri.http(_baseUrl, "3/movie/popular", {
      'api_key' : API_KEY,
      'page' : "1",
      'language' : _lenguaje
    });

    return getJson(uri).then(((data) =>
      //Accedemos a los datos segun la estructura del Json a mapiar
      data['results'].map<Media>((item) => Media(item, MediaType.movie)).toList()
    ));
  }

  //Lamamos get TV
  Future<List<Media>> fechShow(){
    var uri = new Uri.http(_baseUrl, "3/tv/popular", {
      'api_key' : API_KEY,
      'page' : "1",
      'language' : _lenguaje
    });

    return getJson(uri).then(((data) =>
      //Accedemos a los datos segun la estructura del Json a mapiar
      data['results'].map<Media>((item) => Media(item, MediaType.show)).toList()
    ));
  }
}
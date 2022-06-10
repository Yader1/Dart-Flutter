//Libreria que nos permitira hacer llamadas async
import "dart:async";
//Libreria que nos permitira hacer las llamadas principales con el alias http
import 'package:http/http.dart' as http;
//Libreria que nos proporciona un obj json
import 'dart:convert';
//Importamos libreria de la llave
import 'package:movie_app/common/Constant.dart';

class HttpHandler{
  //Definimos propiedades relacionada al URL
  final String _baseUrl = "api.themoviedb.org";
  final String _lenguaje = "es-ES";


  //Metodo principal
  Future<dynamic> getJson(Uri uri) async{
    http.Response response = await http.get(uri);
    return json.decode(response.body).toString();
  }

  //Llamada a los datos
  Future<String> fechMovie(){
    var uri = new Uri.http(_baseUrl, "3/movie/popular", {
      'api_key' : API_KEY,
      'page' : "1",
      'language' : _lenguaje
    });

    return getJson(uri).then(((data) => data.toString()));
  }
}
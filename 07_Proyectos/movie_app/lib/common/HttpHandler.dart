//Libreria que nos permitira hacer llamadas async
import "dart:async";
//Libreria que nos permitira hacer las llamadas principales con el alias http
import 'package:http/http.dart' as http;
//Libreria que nos proporciona un obj json
import 'dart:convert';

class HttpHandler{
  //Metodo principal
  Future<dynamic> getJson(Uri uri) async{
    http.Response response = await http.get(uri);
    return json.decode(response.body).toString();
  }
}
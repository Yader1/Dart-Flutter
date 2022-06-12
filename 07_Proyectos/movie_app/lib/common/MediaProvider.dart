import 'dart:async';
import 'package:movie_app/model/Media.dart';
import 'package:movie_app/common/HttpHandler.dart';
//Se utilizara para definir los proveedores
abstract class MediaProvider {
  Future<List<Media>> fechMedia();
}

class MovieProvider extends MediaProvider{
  HttpHandler _client = HttpHandler.get();
  @override
  Future<List<Media>> fechMedia() {
    return _client.fechMovie();
  }
}

class ShowProvider extends MediaProvider{
  HttpHandler _client = HttpHandler.get();
  @override
  Future<List<Media>> fechMedia() {
    return _client.fechShow();
  }
}
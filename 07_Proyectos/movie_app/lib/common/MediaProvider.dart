import 'dart:async';
import 'package:movie_app/model/Media.dart';
import 'package:movie_app/common/HttpHandler.dart';
//Se utilizara para definir los proveedores
abstract class MediaProvider {
  Future<List<Media>> fechMedia(String category);
  Future<List<Media>> fechCast(int mediaId);
}

class MovieProvider extends MediaProvider{
  HttpHandler _client = HttpHandler.get();
  @override
  Future<List<Media>> fechMedia(String category) {
    return _client.fechMovie(category : category);
  }
  
  @override
  Future<List<Media>> fechCast(int mediaId) {
   return _client.fechCreditMovies(mediaId);
  }
}

class ShowProvider extends MediaProvider{
  HttpHandler _client = HttpHandler.get();
  @override
  Future<List<Media>> fechMedia(String category) {
    return _client.fechShow(category : category);
  }
  
  @override
  Future<List<Media>> fechCast(int mediaId) {
    return _client.fechCreditShow(mediaId);
  }
}

enum MediaType {movie, show}
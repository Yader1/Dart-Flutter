import 'package:movie_app/common/Util.dart';
import 'package:movie_app/common/MediaProvider.dart';
//Definir las propiedades
class Media{
  late int id;
  late double voteAverage;
  late String title;
  late String posterPath;
  late String backdropPath;
  late String overview;
  late String releaseDate;
  late List<dynamic> genreIds;

  //Para obtener el poster de una pelicula
  String getPosterUrl() => getMediumPictureUrl(posterPath);
  String getBackDropUrl() => getMediumPictureUrl(backdropPath);
  //Enviamos la lista de generos brindados por la api
  String getGenres() => getGenreValues(genreIds);

  //Es un metodo de la familia factori de patron de diseño
  factory Media(Map jsonMap, MediaType mediaType){
    try{
      return new Media.deserialize(jsonMap, mediaType);
    }catch (ex){
      throw ex;
    }
    
  }

  //Funcion que nos devuelve solo el año de una fecha
  int getReleaseDateYear(){
    if(releaseDate == null || releaseDate == "")
      return 0;

    return DateTime.parse(releaseDate).year;
  }

  //Poblamos los datos, tomamos el json y lo convertimos en un obj
  Media.deserialize(Map json, MediaType mediaType) :
    id = json["id"].toInt(),
    voteAverage = json["vote_average"]?.toDouble(),
    title = json["title"],
    posterPath = json["poster_path"] ?? "",
    backdropPath = json["backdrop_path"] ?? "",
    overview = json["overview"],
    releaseDate = json[mediaType == MediaType.movie ? "release_date" : "first_air_date"],
    genreIds = json["genre_ids"].toList();
}
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

  //Es un metodo de la familia factori de patron de diseño
  factory Media(Map jsonMap){
    return new Media.deserialize(jsonMap);
  }

  //Poblamos los datos, tomamos el json y lo convertimos en un obj
  Media.deserialize(Map json) :
    id = json["id"].toInt(),
    voteAverage = json["vote_average"].toDouble(),
    title = json["title"],
    posterPath = json["poster_path"] ?? "",
    backdropPath = json["backdrop_path"] ?? "",
    overview = json["overview"],
    releaseDate = json["release_date"],
    genreIds = json["genre_ids"].toList();
}
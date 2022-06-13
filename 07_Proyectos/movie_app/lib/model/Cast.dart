import 'package:movie_app/common/MediaProvider.dart';
import 'package:movie_app/common/Util.dart';
class Cast{
  late int id;
  late String name;
  late String profilePath;

  String getCastUrl() => getMediumPictureUrl(profilePath);

  //Es un metodo de la familia factori de patron de diseño
  factory Cast(Map jsonMap, MediaType mediaType){
    try{
      return new Cast.deserialize(jsonMap, mediaType);
    }catch (ex){
      throw ex;
    }
    
  }

   Cast.deserialize(Map json, MediaType mediaType) :
    id = json["cast_id"].toInt(),
    name = json["name"],
    profilePath = json["profile_path"] ?? "/eze9FO9VuryXLP0aF2cRqPCcibN.jpg";
}
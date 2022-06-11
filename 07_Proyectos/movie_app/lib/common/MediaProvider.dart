import 'dart:async';
import 'package:movie_app/model/Media.dart';
//Se utilizara para definir los proveedores
abstract class MediaProvider {
  Future<List<Media>> fechMedia();
}
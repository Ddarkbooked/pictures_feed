import 'package:pictures_feed/data/api/dto/picture_dto.dart';
import 'package:pictures_feed/data/model/picture.dart';

class PicturesCache {
  List<Picture> _pictures = [];

  set setPictures(List<Picture> pictures) => _pictures = pictures;
  List<Picture> get pictures => _pictures;
  void addPictures(List<Picture> pictures) => _pictures.addAll(pictures);
}

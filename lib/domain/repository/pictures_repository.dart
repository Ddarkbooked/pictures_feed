import 'package:pictures_feed/data/model/picture.dart';

abstract class PicturesRepository {
  Future<List<Picture>> getPictures({int picturesQuantity});
}

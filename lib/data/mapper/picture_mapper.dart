import 'dart:math';

import 'package:pictures_feed/data/api/dto/picture_dto.dart';
import 'package:pictures_feed/data/model/picture.dart';

extension PictureMapper on PictureDto {
  Picture toModel() => Picture(
      authorName: author,
      pictureUrl:
          downloadUrl.substring(0, 25) + downloadUrl.split('/')[4] + '/600/800',
      width: 1,
      height: Random().nextInt(2) + 1);
}

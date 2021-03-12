import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:pictures_feed/data/api/dto/picture_dto.dart';
import 'package:pictures_feed/data/api/service/api_service.dart';
import 'package:pictures_feed/data/cache/pictures_cache.dart';
import 'package:pictures_feed/data/model/picture.dart';
import 'package:pictures_feed/domain/repository/pictures_repository.dart';
import 'package:pictures_feed/data/mapper/picture_mapper.dart';

class PicturesDataRepository extends PicturesRepository {
  final ApiService _api;
  final PicturesCache _picturesCache;

  PicturesDataRepository(this._api, this._picturesCache);

  @override
  Future<List<Picture>> getPictures({int picturesQuantity}) async {
    final listLenght = _picturesCache.pictures.length + picturesQuantity;
    final response = await _api.pictures(listLenght ~/ 10, picturesQuantity);

    List<Picture> mappedResponse = await _mapData(response);
    _picturesCache.addPictures(mappedResponse);

    return _picturesCache.pictures;
  }

  Future<List<Picture>> _mapData(Response response) => Future.value(response)
      .then((it) => json.decode(it.bodyString))
      .then((it) =>
          (it as List<dynamic>).map((it) => PictureDto.fromJson(it)).toList())
      .then((it) => it?.map((e) => e?.toModel())?.toList());
}

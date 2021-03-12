import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pictures_request_event.freezed.dart';

@freezed
abstract class PicturesRequestEvent with _$PicturesRequestEvent {
  const factory PicturesRequestEvent.fetch({@required int picturesQuantity}) =
      FetchEvent;
  const factory PicturesRequestEvent.paginate(
      {@required int picturesQuantity}) = PaginateEvent;
}

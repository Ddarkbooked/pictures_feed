import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pictures_feed/data/model/picture.dart';

part 'pictures_request_state.freezed.dart';

@freezed
abstract class PicturesRequestState with _$PicturesRequestState {
  const factory PicturesRequestState.idle() = IdleState;
  const factory PicturesRequestState.fetchInProgress() = FetchInProgressState;
  const factory PicturesRequestState.fetchSuccess(
      {@required List<Picture> data, @required int length}) = FetchSuccessState;
  const factory PicturesRequestState.fetchFailure() = FetchFailureState;
}

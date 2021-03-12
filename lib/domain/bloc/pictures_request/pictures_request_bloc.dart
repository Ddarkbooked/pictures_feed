import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pictures_feed/domain/bloc/pictures_request/pictures_request_event.dart';
import 'package:pictures_feed/domain/bloc/pictures_request/pictures_request_state.dart';
import 'package:pictures_feed/domain/repository/pictures_repository.dart';

import 'pictures_request_event.dart';
import 'pictures_request_state.dart';

class PicturesRequestBloc
    extends Bloc<PicturesRequestEvent, PicturesRequestState> {
  final PicturesRepository _picturesRepository;

  PicturesRequestBloc(this._picturesRepository)
      : super(const PicturesRequestState.idle());

  @override
  Stream<PicturesRequestState> mapEventToState(
      PicturesRequestEvent event) async* {
    yield* event.when<Stream<PicturesRequestState>>(
        fetch: _fetchToState, paginate: _paginateToState);
  }

  Stream<PicturesRequestState> _fetchToState(int picturesQuantity) async* {
    yield const PicturesRequestState.fetchInProgress();
    yield* _fetch(picturesQuantity);
  }

  Stream<PicturesRequestState> _paginateToState(int picturesQuantity) async* {
    yield* _fetch(picturesQuantity);
  }

  Stream<PicturesRequestState> _fetch(int picturesQuantity) async* {
    try {
      final response = await _picturesRepository
          .getPictures(picturesQuantity: picturesQuantity)
          .timeout(Duration(seconds: 5));
      yield PicturesRequestState.fetchSuccess(
          data: response, length: response.length);
    } on TimeoutException {
      yield const PicturesRequestState.fetchFailure();
    } on dynamic catch (_) {
      yield const PicturesRequestState.fetchFailure();
      rethrow;
    }
  }
}

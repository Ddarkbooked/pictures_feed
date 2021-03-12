// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pictures_request_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PicturesRequestStateTearOff {
  const _$PicturesRequestStateTearOff();

// ignore: unused_element
  IdleState idle() {
    return const IdleState();
  }

// ignore: unused_element
  FetchInProgressState fetchInProgress() {
    return const FetchInProgressState();
  }

// ignore: unused_element
  FetchSuccessState fetchSuccess(
      {@required List<Picture> data, @required int length}) {
    return FetchSuccessState(
      data: data,
      length: length,
    );
  }

// ignore: unused_element
  FetchFailureState fetchFailure() {
    return const FetchFailureState();
  }
}

/// @nodoc
// ignore: unused_element
const $PicturesRequestState = _$PicturesRequestStateTearOff();

/// @nodoc
mixin _$PicturesRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult fetchInProgress(),
    @required TResult fetchSuccess(List<Picture> data, int length),
    @required TResult fetchFailure(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult fetchInProgress(),
    TResult fetchSuccess(List<Picture> data, int length),
    TResult fetchFailure(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(IdleState value),
    @required TResult fetchInProgress(FetchInProgressState value),
    @required TResult fetchSuccess(FetchSuccessState value),
    @required TResult fetchFailure(FetchFailureState value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(IdleState value),
    TResult fetchInProgress(FetchInProgressState value),
    TResult fetchSuccess(FetchSuccessState value),
    TResult fetchFailure(FetchFailureState value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PicturesRequestStateCopyWith<$Res> {
  factory $PicturesRequestStateCopyWith(PicturesRequestState value,
          $Res Function(PicturesRequestState) then) =
      _$PicturesRequestStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PicturesRequestStateCopyWithImpl<$Res>
    implements $PicturesRequestStateCopyWith<$Res> {
  _$PicturesRequestStateCopyWithImpl(this._value, this._then);

  final PicturesRequestState _value;
  // ignore: unused_field
  final $Res Function(PicturesRequestState) _then;
}

/// @nodoc
abstract class $IdleStateCopyWith<$Res> {
  factory $IdleStateCopyWith(IdleState value, $Res Function(IdleState) then) =
      _$IdleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$IdleStateCopyWithImpl<$Res>
    extends _$PicturesRequestStateCopyWithImpl<$Res>
    implements $IdleStateCopyWith<$Res> {
  _$IdleStateCopyWithImpl(IdleState _value, $Res Function(IdleState) _then)
      : super(_value, (v) => _then(v as IdleState));

  @override
  IdleState get _value => super._value as IdleState;
}

/// @nodoc
class _$IdleState with DiagnosticableTreeMixin implements IdleState {
  const _$IdleState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PicturesRequestState.idle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PicturesRequestState.idle'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IdleState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult fetchInProgress(),
    @required TResult fetchSuccess(List<Picture> data, int length),
    @required TResult fetchFailure(),
  }) {
    assert(idle != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult fetchInProgress(),
    TResult fetchSuccess(List<Picture> data, int length),
    TResult fetchFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(IdleState value),
    @required TResult fetchInProgress(FetchInProgressState value),
    @required TResult fetchSuccess(FetchSuccessState value),
    @required TResult fetchFailure(FetchFailureState value),
  }) {
    assert(idle != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(IdleState value),
    TResult fetchInProgress(FetchInProgressState value),
    TResult fetchSuccess(FetchSuccessState value),
    TResult fetchFailure(FetchFailureState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleState implements PicturesRequestState {
  const factory IdleState() = _$IdleState;
}

/// @nodoc
abstract class $FetchInProgressStateCopyWith<$Res> {
  factory $FetchInProgressStateCopyWith(FetchInProgressState value,
          $Res Function(FetchInProgressState) then) =
      _$FetchInProgressStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchInProgressStateCopyWithImpl<$Res>
    extends _$PicturesRequestStateCopyWithImpl<$Res>
    implements $FetchInProgressStateCopyWith<$Res> {
  _$FetchInProgressStateCopyWithImpl(
      FetchInProgressState _value, $Res Function(FetchInProgressState) _then)
      : super(_value, (v) => _then(v as FetchInProgressState));

  @override
  FetchInProgressState get _value => super._value as FetchInProgressState;
}

/// @nodoc
class _$FetchInProgressState
    with DiagnosticableTreeMixin
    implements FetchInProgressState {
  const _$FetchInProgressState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PicturesRequestState.fetchInProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'PicturesRequestState.fetchInProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchInProgressState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult fetchInProgress(),
    @required TResult fetchSuccess(List<Picture> data, int length),
    @required TResult fetchFailure(),
  }) {
    assert(idle != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult fetchInProgress(),
    TResult fetchSuccess(List<Picture> data, int length),
    TResult fetchFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchInProgress != null) {
      return fetchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(IdleState value),
    @required TResult fetchInProgress(FetchInProgressState value),
    @required TResult fetchSuccess(FetchSuccessState value),
    @required TResult fetchFailure(FetchFailureState value),
  }) {
    assert(idle != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(IdleState value),
    TResult fetchInProgress(FetchInProgressState value),
    TResult fetchSuccess(FetchSuccessState value),
    TResult fetchFailure(FetchFailureState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchInProgress != null) {
      return fetchInProgress(this);
    }
    return orElse();
  }
}

abstract class FetchInProgressState implements PicturesRequestState {
  const factory FetchInProgressState() = _$FetchInProgressState;
}

/// @nodoc
abstract class $FetchSuccessStateCopyWith<$Res> {
  factory $FetchSuccessStateCopyWith(
          FetchSuccessState value, $Res Function(FetchSuccessState) then) =
      _$FetchSuccessStateCopyWithImpl<$Res>;
  $Res call({List<Picture> data, int length});
}

/// @nodoc
class _$FetchSuccessStateCopyWithImpl<$Res>
    extends _$PicturesRequestStateCopyWithImpl<$Res>
    implements $FetchSuccessStateCopyWith<$Res> {
  _$FetchSuccessStateCopyWithImpl(
      FetchSuccessState _value, $Res Function(FetchSuccessState) _then)
      : super(_value, (v) => _then(v as FetchSuccessState));

  @override
  FetchSuccessState get _value => super._value as FetchSuccessState;

  @override
  $Res call({
    Object data = freezed,
    Object length = freezed,
  }) {
    return _then(FetchSuccessState(
      data: data == freezed ? _value.data : data as List<Picture>,
      length: length == freezed ? _value.length : length as int,
    ));
  }
}

/// @nodoc
class _$FetchSuccessState
    with DiagnosticableTreeMixin
    implements FetchSuccessState {
  const _$FetchSuccessState({@required this.data, @required this.length})
      : assert(data != null),
        assert(length != null);

  @override
  final List<Picture> data;
  @override
  final int length;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PicturesRequestState.fetchSuccess(data: $data, length: $length)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PicturesRequestState.fetchSuccess'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('length', length));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchSuccessState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(length);

  @JsonKey(ignore: true)
  @override
  $FetchSuccessStateCopyWith<FetchSuccessState> get copyWith =>
      _$FetchSuccessStateCopyWithImpl<FetchSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult fetchInProgress(),
    @required TResult fetchSuccess(List<Picture> data, int length),
    @required TResult fetchFailure(),
  }) {
    assert(idle != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchSuccess(data, length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult fetchInProgress(),
    TResult fetchSuccess(List<Picture> data, int length),
    TResult fetchFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchSuccess != null) {
      return fetchSuccess(data, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(IdleState value),
    @required TResult fetchInProgress(FetchInProgressState value),
    @required TResult fetchSuccess(FetchSuccessState value),
    @required TResult fetchFailure(FetchFailureState value),
  }) {
    assert(idle != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(IdleState value),
    TResult fetchInProgress(FetchInProgressState value),
    TResult fetchSuccess(FetchSuccessState value),
    TResult fetchFailure(FetchFailureState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchSuccess != null) {
      return fetchSuccess(this);
    }
    return orElse();
  }
}

abstract class FetchSuccessState implements PicturesRequestState {
  const factory FetchSuccessState(
      {@required List<Picture> data,
      @required int length}) = _$FetchSuccessState;

  List<Picture> get data;
  int get length;
  @JsonKey(ignore: true)
  $FetchSuccessStateCopyWith<FetchSuccessState> get copyWith;
}

/// @nodoc
abstract class $FetchFailureStateCopyWith<$Res> {
  factory $FetchFailureStateCopyWith(
          FetchFailureState value, $Res Function(FetchFailureState) then) =
      _$FetchFailureStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchFailureStateCopyWithImpl<$Res>
    extends _$PicturesRequestStateCopyWithImpl<$Res>
    implements $FetchFailureStateCopyWith<$Res> {
  _$FetchFailureStateCopyWithImpl(
      FetchFailureState _value, $Res Function(FetchFailureState) _then)
      : super(_value, (v) => _then(v as FetchFailureState));

  @override
  FetchFailureState get _value => super._value as FetchFailureState;
}

/// @nodoc
class _$FetchFailureState
    with DiagnosticableTreeMixin
    implements FetchFailureState {
  const _$FetchFailureState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PicturesRequestState.fetchFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PicturesRequestState.fetchFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FetchFailureState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult fetchInProgress(),
    @required TResult fetchSuccess(List<Picture> data, int length),
    @required TResult fetchFailure(),
  }) {
    assert(idle != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult fetchInProgress(),
    TResult fetchSuccess(List<Picture> data, int length),
    TResult fetchFailure(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchFailure != null) {
      return fetchFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(IdleState value),
    @required TResult fetchInProgress(FetchInProgressState value),
    @required TResult fetchSuccess(FetchSuccessState value),
    @required TResult fetchFailure(FetchFailureState value),
  }) {
    assert(idle != null);
    assert(fetchInProgress != null);
    assert(fetchSuccess != null);
    assert(fetchFailure != null);
    return fetchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(IdleState value),
    TResult fetchInProgress(FetchInProgressState value),
    TResult fetchSuccess(FetchSuccessState value),
    TResult fetchFailure(FetchFailureState value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetchFailure != null) {
      return fetchFailure(this);
    }
    return orElse();
  }
}

abstract class FetchFailureState implements PicturesRequestState {
  const factory FetchFailureState() = _$FetchFailureState;
}

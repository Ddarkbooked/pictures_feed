// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'pictures_request_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PicturesRequestEventTearOff {
  const _$PicturesRequestEventTearOff();

// ignore: unused_element
  FetchEvent fetch({@required int picturesQuantity}) {
    return FetchEvent(
      picturesQuantity: picturesQuantity,
    );
  }

// ignore: unused_element
  PaginateEvent paginate({@required int picturesQuantity}) {
    return PaginateEvent(
      picturesQuantity: picturesQuantity,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PicturesRequestEvent = _$PicturesRequestEventTearOff();

/// @nodoc
mixin _$PicturesRequestEvent {
  int get picturesQuantity;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetch(int picturesQuantity),
    @required TResult paginate(int picturesQuantity),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetch(int picturesQuantity),
    TResult paginate(int picturesQuantity),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetch(FetchEvent value),
    @required TResult paginate(PaginateEvent value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetch(FetchEvent value),
    TResult paginate(PaginateEvent value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $PicturesRequestEventCopyWith<PicturesRequestEvent> get copyWith;
}

/// @nodoc
abstract class $PicturesRequestEventCopyWith<$Res> {
  factory $PicturesRequestEventCopyWith(PicturesRequestEvent value,
          $Res Function(PicturesRequestEvent) then) =
      _$PicturesRequestEventCopyWithImpl<$Res>;
  $Res call({int picturesQuantity});
}

/// @nodoc
class _$PicturesRequestEventCopyWithImpl<$Res>
    implements $PicturesRequestEventCopyWith<$Res> {
  _$PicturesRequestEventCopyWithImpl(this._value, this._then);

  final PicturesRequestEvent _value;
  // ignore: unused_field
  final $Res Function(PicturesRequestEvent) _then;

  @override
  $Res call({
    Object picturesQuantity = freezed,
  }) {
    return _then(_value.copyWith(
      picturesQuantity: picturesQuantity == freezed
          ? _value.picturesQuantity
          : picturesQuantity as int,
    ));
  }
}

/// @nodoc
abstract class $FetchEventCopyWith<$Res>
    implements $PicturesRequestEventCopyWith<$Res> {
  factory $FetchEventCopyWith(
          FetchEvent value, $Res Function(FetchEvent) then) =
      _$FetchEventCopyWithImpl<$Res>;
  @override
  $Res call({int picturesQuantity});
}

/// @nodoc
class _$FetchEventCopyWithImpl<$Res>
    extends _$PicturesRequestEventCopyWithImpl<$Res>
    implements $FetchEventCopyWith<$Res> {
  _$FetchEventCopyWithImpl(FetchEvent _value, $Res Function(FetchEvent) _then)
      : super(_value, (v) => _then(v as FetchEvent));

  @override
  FetchEvent get _value => super._value as FetchEvent;

  @override
  $Res call({
    Object picturesQuantity = freezed,
  }) {
    return _then(FetchEvent(
      picturesQuantity: picturesQuantity == freezed
          ? _value.picturesQuantity
          : picturesQuantity as int,
    ));
  }
}

/// @nodoc
class _$FetchEvent with DiagnosticableTreeMixin implements FetchEvent {
  const _$FetchEvent({@required this.picturesQuantity})
      : assert(picturesQuantity != null);

  @override
  final int picturesQuantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PicturesRequestEvent.fetch(picturesQuantity: $picturesQuantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PicturesRequestEvent.fetch'))
      ..add(DiagnosticsProperty('picturesQuantity', picturesQuantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchEvent &&
            (identical(other.picturesQuantity, picturesQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.picturesQuantity, picturesQuantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(picturesQuantity);

  @JsonKey(ignore: true)
  @override
  $FetchEventCopyWith<FetchEvent> get copyWith =>
      _$FetchEventCopyWithImpl<FetchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetch(int picturesQuantity),
    @required TResult paginate(int picturesQuantity),
  }) {
    assert(fetch != null);
    assert(paginate != null);
    return fetch(picturesQuantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetch(int picturesQuantity),
    TResult paginate(int picturesQuantity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(picturesQuantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetch(FetchEvent value),
    @required TResult paginate(PaginateEvent value),
  }) {
    assert(fetch != null);
    assert(paginate != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetch(FetchEvent value),
    TResult paginate(PaginateEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchEvent implements PicturesRequestEvent {
  const factory FetchEvent({@required int picturesQuantity}) = _$FetchEvent;

  @override
  int get picturesQuantity;
  @override
  @JsonKey(ignore: true)
  $FetchEventCopyWith<FetchEvent> get copyWith;
}

/// @nodoc
abstract class $PaginateEventCopyWith<$Res>
    implements $PicturesRequestEventCopyWith<$Res> {
  factory $PaginateEventCopyWith(
          PaginateEvent value, $Res Function(PaginateEvent) then) =
      _$PaginateEventCopyWithImpl<$Res>;
  @override
  $Res call({int picturesQuantity});
}

/// @nodoc
class _$PaginateEventCopyWithImpl<$Res>
    extends _$PicturesRequestEventCopyWithImpl<$Res>
    implements $PaginateEventCopyWith<$Res> {
  _$PaginateEventCopyWithImpl(
      PaginateEvent _value, $Res Function(PaginateEvent) _then)
      : super(_value, (v) => _then(v as PaginateEvent));

  @override
  PaginateEvent get _value => super._value as PaginateEvent;

  @override
  $Res call({
    Object picturesQuantity = freezed,
  }) {
    return _then(PaginateEvent(
      picturesQuantity: picturesQuantity == freezed
          ? _value.picturesQuantity
          : picturesQuantity as int,
    ));
  }
}

/// @nodoc
class _$PaginateEvent with DiagnosticableTreeMixin implements PaginateEvent {
  const _$PaginateEvent({@required this.picturesQuantity})
      : assert(picturesQuantity != null);

  @override
  final int picturesQuantity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PicturesRequestEvent.paginate(picturesQuantity: $picturesQuantity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PicturesRequestEvent.paginate'))
      ..add(DiagnosticsProperty('picturesQuantity', picturesQuantity));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PaginateEvent &&
            (identical(other.picturesQuantity, picturesQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.picturesQuantity, picturesQuantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(picturesQuantity);

  @JsonKey(ignore: true)
  @override
  $PaginateEventCopyWith<PaginateEvent> get copyWith =>
      _$PaginateEventCopyWithImpl<PaginateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fetch(int picturesQuantity),
    @required TResult paginate(int picturesQuantity),
  }) {
    assert(fetch != null);
    assert(paginate != null);
    return paginate(picturesQuantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fetch(int picturesQuantity),
    TResult paginate(int picturesQuantity),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paginate != null) {
      return paginate(picturesQuantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fetch(FetchEvent value),
    @required TResult paginate(PaginateEvent value),
  }) {
    assert(fetch != null);
    assert(paginate != null);
    return paginate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fetch(FetchEvent value),
    TResult paginate(PaginateEvent value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paginate != null) {
      return paginate(this);
    }
    return orElse();
  }
}

abstract class PaginateEvent implements PicturesRequestEvent {
  const factory PaginateEvent({@required int picturesQuantity}) =
      _$PaginateEvent;

  @override
  int get picturesQuantity;
  @override
  @JsonKey(ignore: true)
  $PaginateEventCopyWith<PaginateEvent> get copyWith;
}

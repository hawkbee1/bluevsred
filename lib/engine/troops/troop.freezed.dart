// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'troop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Troop _$TroopFromJson(Map<String, dynamic> json) {
  return _Troop.fromJson(json);
}

/// @nodoc
mixin _$Troop {
  String get id => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  GamePlayer get gamePlayer => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String path, GamePlayer gamePlayer)
        def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String path, GamePlayer gamePlayer)? def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String path, GamePlayer gamePlayer)? def,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Troop value) def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Troop value)? def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Troop value)? def,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TroopCopyWith<Troop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TroopCopyWith<$Res> {
  factory $TroopCopyWith(Troop value, $Res Function(Troop) then) =
      _$TroopCopyWithImpl<$Res, Troop>;
  @useResult
  $Res call({String id, String path, GamePlayer gamePlayer});

  $GamePlayerCopyWith<$Res> get gamePlayer;
}

/// @nodoc
class _$TroopCopyWithImpl<$Res, $Val extends Troop>
    implements $TroopCopyWith<$Res> {
  _$TroopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? gamePlayer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      gamePlayer: null == gamePlayer
          ? _value.gamePlayer
          : gamePlayer // ignore: cast_nullable_to_non_nullable
              as GamePlayer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GamePlayerCopyWith<$Res> get gamePlayer {
    return $GamePlayerCopyWith<$Res>(_value.gamePlayer, (value) {
      return _then(_value.copyWith(gamePlayer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TroopImplCopyWith<$Res> implements $TroopCopyWith<$Res> {
  factory _$$TroopImplCopyWith(
          _$TroopImpl value, $Res Function(_$TroopImpl) then) =
      __$$TroopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String path, GamePlayer gamePlayer});

  @override
  $GamePlayerCopyWith<$Res> get gamePlayer;
}

/// @nodoc
class __$$TroopImplCopyWithImpl<$Res>
    extends _$TroopCopyWithImpl<$Res, _$TroopImpl>
    implements _$$TroopImplCopyWith<$Res> {
  __$$TroopImplCopyWithImpl(
      _$TroopImpl _value, $Res Function(_$TroopImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = null,
    Object? gamePlayer = null,
  }) {
    return _then(_$TroopImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      gamePlayer: null == gamePlayer
          ? _value.gamePlayer
          : gamePlayer // ignore: cast_nullable_to_non_nullable
              as GamePlayer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TroopImpl implements _Troop {
  _$TroopImpl({required this.id, required this.path, required this.gamePlayer});

  factory _$TroopImpl.fromJson(Map<String, dynamic> json) =>
      _$$TroopImplFromJson(json);

  @override
  final String id;
  @override
  final String path;
  @override
  final GamePlayer gamePlayer;

  @override
  String toString() {
    return 'Troop.def(id: $id, path: $path, gamePlayer: $gamePlayer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TroopImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.gamePlayer, gamePlayer) ||
                other.gamePlayer == gamePlayer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, path, gamePlayer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TroopImplCopyWith<_$TroopImpl> get copyWith =>
      __$$TroopImplCopyWithImpl<_$TroopImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String path, GamePlayer gamePlayer)
        def,
  }) {
    return def(id, path, gamePlayer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String path, GamePlayer gamePlayer)? def,
  }) {
    return def?.call(id, path, gamePlayer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String path, GamePlayer gamePlayer)? def,
    required TResult orElse(),
  }) {
    if (def != null) {
      return def(id, path, gamePlayer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Troop value) def,
  }) {
    return def(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Troop value)? def,
  }) {
    return def?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Troop value)? def,
    required TResult orElse(),
  }) {
    if (def != null) {
      return def(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TroopImplToJson(
      this,
    );
  }
}

abstract class _Troop implements Troop {
  factory _Troop(
      {required final String id,
      required final String path,
      required final GamePlayer gamePlayer}) = _$TroopImpl;

  factory _Troop.fromJson(Map<String, dynamic> json) = _$TroopImpl.fromJson;

  @override
  String get id;
  @override
  String get path;
  @override
  GamePlayer get gamePlayer;
  @override
  @JsonKey(ignore: true)
  _$$TroopImplCopyWith<_$TroopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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

/// @nodoc
mixin _$Troop {
  TroopDb get troopDb => throw _privateConstructorUsedError;
  GamePlayer get gamePlayer => throw _privateConstructorUsedError;

  /// Create a copy of Troop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TroopCopyWith<Troop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TroopCopyWith<$Res> {
  factory $TroopCopyWith(Troop value, $Res Function(Troop) then) =
      _$TroopCopyWithImpl<$Res, Troop>;
  @useResult
  $Res call({TroopDb troopDb, GamePlayer gamePlayer});

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

  /// Create a copy of Troop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? troopDb = null,
    Object? gamePlayer = null,
  }) {
    return _then(_value.copyWith(
      troopDb: null == troopDb
          ? _value.troopDb
          : troopDb // ignore: cast_nullable_to_non_nullable
              as TroopDb,
      gamePlayer: null == gamePlayer
          ? _value.gamePlayer
          : gamePlayer // ignore: cast_nullable_to_non_nullable
              as GamePlayer,
    ) as $Val);
  }

  /// Create a copy of Troop
  /// with the given fields replaced by the non-null parameter values.
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
  $Res call({TroopDb troopDb, GamePlayer gamePlayer});

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

  /// Create a copy of Troop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? troopDb = null,
    Object? gamePlayer = null,
  }) {
    return _then(_$TroopImpl(
      troopDb: null == troopDb
          ? _value.troopDb
          : troopDb // ignore: cast_nullable_to_non_nullable
              as TroopDb,
      gamePlayer: null == gamePlayer
          ? _value.gamePlayer
          : gamePlayer // ignore: cast_nullable_to_non_nullable
              as GamePlayer,
    ));
  }
}

/// @nodoc

class _$TroopImpl extends _Troop {
  _$TroopImpl({required this.troopDb, required this.gamePlayer}) : super._();

  @override
  final TroopDb troopDb;
  @override
  final GamePlayer gamePlayer;

  @override
  String toString() {
    return 'Troop(troopDb: $troopDb, gamePlayer: $gamePlayer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TroopImpl &&
            (identical(other.troopDb, troopDb) || other.troopDb == troopDb) &&
            (identical(other.gamePlayer, gamePlayer) ||
                other.gamePlayer == gamePlayer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, troopDb, gamePlayer);

  /// Create a copy of Troop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TroopImplCopyWith<_$TroopImpl> get copyWith =>
      __$$TroopImplCopyWithImpl<_$TroopImpl>(this, _$identity);
}

abstract class _Troop extends Troop {
  factory _Troop(
      {required final TroopDb troopDb,
      required final GamePlayer gamePlayer}) = _$TroopImpl;
  _Troop._() : super._();

  @override
  TroopDb get troopDb;
  @override
  GamePlayer get gamePlayer;

  /// Create a copy of Troop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TroopImplCopyWith<_$TroopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_player.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GamePlayer _$GamePlayerFromJson(Map<String, dynamic> json) {
  return _GamePlayer.fromJson(json);
}

/// @nodoc
mixin _$GamePlayer {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this GamePlayer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GamePlayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GamePlayerCopyWith<GamePlayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamePlayerCopyWith<$Res> {
  factory $GamePlayerCopyWith(
          GamePlayer value, $Res Function(GamePlayer) then) =
      _$GamePlayerCopyWithImpl<$Res, GamePlayer>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$GamePlayerCopyWithImpl<$Res, $Val extends GamePlayer>
    implements $GamePlayerCopyWith<$Res> {
  _$GamePlayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GamePlayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GamePlayerImplCopyWith<$Res>
    implements $GamePlayerCopyWith<$Res> {
  factory _$$GamePlayerImplCopyWith(
          _$GamePlayerImpl value, $Res Function(_$GamePlayerImpl) then) =
      __$$GamePlayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$GamePlayerImplCopyWithImpl<$Res>
    extends _$GamePlayerCopyWithImpl<$Res, _$GamePlayerImpl>
    implements _$$GamePlayerImplCopyWith<$Res> {
  __$$GamePlayerImplCopyWithImpl(
      _$GamePlayerImpl _value, $Res Function(_$GamePlayerImpl) _then)
      : super(_value, _then);

  /// Create a copy of GamePlayer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$GamePlayerImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GamePlayerImpl implements _GamePlayer {
  _$GamePlayerImpl({required this.name});

  factory _$GamePlayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$GamePlayerImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'GamePlayer(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamePlayerImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of GamePlayer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GamePlayerImplCopyWith<_$GamePlayerImpl> get copyWith =>
      __$$GamePlayerImplCopyWithImpl<_$GamePlayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GamePlayerImplToJson(
      this,
    );
  }
}

abstract class _GamePlayer implements GamePlayer {
  factory _GamePlayer({required final String name}) = _$GamePlayerImpl;

  factory _GamePlayer.fromJson(Map<String, dynamic> json) =
      _$GamePlayerImpl.fromJson;

  @override
  String get name;

  /// Create a copy of GamePlayer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GamePlayerImplCopyWith<_$GamePlayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

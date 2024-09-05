// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BattleMap _$BattleMapFromJson(Map<String, dynamic> json) {
  return _BattleMap.fromJson(json);
}

/// @nodoc
mixin _$BattleMap {
  /// Serializes this BattleMap to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattleMapCopyWith<$Res> {
  factory $BattleMapCopyWith(BattleMap value, $Res Function(BattleMap) then) =
      _$BattleMapCopyWithImpl<$Res, BattleMap>;
}

/// @nodoc
class _$BattleMapCopyWithImpl<$Res, $Val extends BattleMap>
    implements $BattleMapCopyWith<$Res> {
  _$BattleMapCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BattleMap
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BattleMapImplCopyWith<$Res> {
  factory _$$BattleMapImplCopyWith(
          _$BattleMapImpl value, $Res Function(_$BattleMapImpl) then) =
      __$$BattleMapImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BattleMapImplCopyWithImpl<$Res>
    extends _$BattleMapCopyWithImpl<$Res, _$BattleMapImpl>
    implements _$$BattleMapImplCopyWith<$Res> {
  __$$BattleMapImplCopyWithImpl(
      _$BattleMapImpl _value, $Res Function(_$BattleMapImpl) _then)
      : super(_value, _then);

  /// Create a copy of BattleMap
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$BattleMapImpl extends _BattleMap {
  const _$BattleMapImpl() : super._();

  factory _$BattleMapImpl.fromJson(Map<String, dynamic> json) =>
      _$$BattleMapImplFromJson(json);

  @override
  String toString() {
    return 'BattleMap()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BattleMapImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$BattleMapImplToJson(
      this,
    );
  }
}

abstract class _BattleMap extends BattleMap {
  const factory _BattleMap() = _$BattleMapImpl;
  const _BattleMap._() : super._();

  factory _BattleMap.fromJson(Map<String, dynamic> json) =
      _$BattleMapImpl.fromJson;
}

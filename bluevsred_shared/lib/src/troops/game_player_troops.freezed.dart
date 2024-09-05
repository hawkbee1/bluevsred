// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_player_troops.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GamePlayerTroops {
  Set<Troop> get troops => throw _privateConstructorUsedError;

  /// Create a copy of GamePlayerTroops
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GamePlayerTroopsCopyWith<GamePlayerTroops> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamePlayerTroopsCopyWith<$Res> {
  factory $GamePlayerTroopsCopyWith(
          GamePlayerTroops value, $Res Function(GamePlayerTroops) then) =
      _$GamePlayerTroopsCopyWithImpl<$Res, GamePlayerTroops>;
  @useResult
  $Res call({Set<Troop> troops});
}

/// @nodoc
class _$GamePlayerTroopsCopyWithImpl<$Res, $Val extends GamePlayerTroops>
    implements $GamePlayerTroopsCopyWith<$Res> {
  _$GamePlayerTroopsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GamePlayerTroops
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? troops = null,
  }) {
    return _then(_value.copyWith(
      troops: null == troops
          ? _value.troops
          : troops // ignore: cast_nullable_to_non_nullable
              as Set<Troop>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GamePlayerTroopsImplCopyWith<$Res>
    implements $GamePlayerTroopsCopyWith<$Res> {
  factory _$$GamePlayerTroopsImplCopyWith(_$GamePlayerTroopsImpl value,
          $Res Function(_$GamePlayerTroopsImpl) then) =
      __$$GamePlayerTroopsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<Troop> troops});
}

/// @nodoc
class __$$GamePlayerTroopsImplCopyWithImpl<$Res>
    extends _$GamePlayerTroopsCopyWithImpl<$Res, _$GamePlayerTroopsImpl>
    implements _$$GamePlayerTroopsImplCopyWith<$Res> {
  __$$GamePlayerTroopsImplCopyWithImpl(_$GamePlayerTroopsImpl _value,
      $Res Function(_$GamePlayerTroopsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GamePlayerTroops
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? troops = null,
  }) {
    return _then(_$GamePlayerTroopsImpl(
      troops: null == troops
          ? _value._troops
          : troops // ignore: cast_nullable_to_non_nullable
              as Set<Troop>,
    ));
  }
}

/// @nodoc

class _$GamePlayerTroopsImpl extends _GamePlayerTroops {
  _$GamePlayerTroopsImpl({required final Set<Troop> troops})
      : _troops = troops,
        super._();

  final Set<Troop> _troops;
  @override
  Set<Troop> get troops {
    if (_troops is EqualUnmodifiableSetView) return _troops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_troops);
  }

  @override
  String toString() {
    return 'GamePlayerTroops(troops: $troops)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamePlayerTroopsImpl &&
            const DeepCollectionEquality().equals(other._troops, _troops));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_troops));

  /// Create a copy of GamePlayerTroops
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GamePlayerTroopsImplCopyWith<_$GamePlayerTroopsImpl> get copyWith =>
      __$$GamePlayerTroopsImplCopyWithImpl<_$GamePlayerTroopsImpl>(
          this, _$identity);
}

abstract class _GamePlayerTroops extends GamePlayerTroops {
  factory _GamePlayerTroops({required final Set<Troop> troops}) =
      _$GamePlayerTroopsImpl;
  _GamePlayerTroops._() : super._();

  @override
  Set<Troop> get troops;

  /// Create a copy of GamePlayerTroops
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GamePlayerTroopsImplCopyWith<_$GamePlayerTroopsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

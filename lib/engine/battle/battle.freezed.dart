// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Battle _$BattleFromJson(Map<String, dynamic> json) {
  return _Battle.fromJson(json);
}

/// @nodoc
mixin _$Battle {
  DateTime get startDate => throw _privateConstructorUsedError;
  BattleMap get battleMap => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime startDate, BattleMap battleMap) def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime startDate, BattleMap battleMap)? def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime startDate, BattleMap battleMap)? def,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Battle value) def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Battle value)? def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Battle value)? def,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BattleCopyWith<Battle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattleCopyWith<$Res> {
  factory $BattleCopyWith(Battle value, $Res Function(Battle) then) =
      _$BattleCopyWithImpl<$Res, Battle>;
  @useResult
  $Res call({DateTime startDate, BattleMap battleMap});

  $BattleMapCopyWith<$Res> get battleMap;
}

/// @nodoc
class _$BattleCopyWithImpl<$Res, $Val extends Battle>
    implements $BattleCopyWith<$Res> {
  _$BattleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? battleMap = null,
  }) {
    return _then(_value.copyWith(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      battleMap: null == battleMap
          ? _value.battleMap
          : battleMap // ignore: cast_nullable_to_non_nullable
              as BattleMap,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BattleMapCopyWith<$Res> get battleMap {
    return $BattleMapCopyWith<$Res>(_value.battleMap, (value) {
      return _then(_value.copyWith(battleMap: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BattleImplCopyWith<$Res> implements $BattleCopyWith<$Res> {
  factory _$$BattleImplCopyWith(
          _$BattleImpl value, $Res Function(_$BattleImpl) then) =
      __$$BattleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime startDate, BattleMap battleMap});

  @override
  $BattleMapCopyWith<$Res> get battleMap;
}

/// @nodoc
class __$$BattleImplCopyWithImpl<$Res>
    extends _$BattleCopyWithImpl<$Res, _$BattleImpl>
    implements _$$BattleImplCopyWith<$Res> {
  __$$BattleImplCopyWithImpl(
      _$BattleImpl _value, $Res Function(_$BattleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? battleMap = null,
  }) {
    return _then(_$BattleImpl(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      battleMap: null == battleMap
          ? _value.battleMap
          : battleMap // ignore: cast_nullable_to_non_nullable
              as BattleMap,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BattleImpl extends _Battle {
  _$BattleImpl({required this.startDate, required this.battleMap}) : super._();

  factory _$BattleImpl.fromJson(Map<String, dynamic> json) =>
      _$$BattleImplFromJson(json);

  @override
  final DateTime startDate;
  @override
  final BattleMap battleMap;

  @override
  String toString() {
    return 'Battle.def(startDate: $startDate, battleMap: $battleMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BattleImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.battleMap, battleMap) ||
                other.battleMap == battleMap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, startDate, battleMap);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BattleImplCopyWith<_$BattleImpl> get copyWith =>
      __$$BattleImplCopyWithImpl<_$BattleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime startDate, BattleMap battleMap) def,
  }) {
    return def(startDate, battleMap);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime startDate, BattleMap battleMap)? def,
  }) {
    return def?.call(startDate, battleMap);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime startDate, BattleMap battleMap)? def,
    required TResult orElse(),
  }) {
    if (def != null) {
      return def(startDate, battleMap);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Battle value) def,
  }) {
    return def(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Battle value)? def,
  }) {
    return def?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Battle value)? def,
    required TResult orElse(),
  }) {
    if (def != null) {
      return def(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BattleImplToJson(
      this,
    );
  }
}

abstract class _Battle extends Battle {
  factory _Battle(
      {required final DateTime startDate,
      required final BattleMap battleMap}) = _$BattleImpl;
  _Battle._() : super._();

  factory _Battle.fromJson(Map<String, dynamic> json) = _$BattleImpl.fromJson;

  @override
  DateTime get startDate;
  @override
  BattleMap get battleMap;
  @override
  @JsonKey(ignore: true)
  _$$BattleImplCopyWith<_$BattleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

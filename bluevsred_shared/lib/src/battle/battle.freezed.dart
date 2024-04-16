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

/// @nodoc
mixin _$Battle {
  DateTime get creationDate => throw _privateConstructorUsedError;
  BattleMap get battleMap => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  double get maxActionPoints => throw _privateConstructorUsedError;
  double get actionPointsRecoveryRate => throw _privateConstructorUsedError;
  Set<Troop>? get troops => throw _privateConstructorUsedError;
  Set<Team>? get teams => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime creationDate,
            BattleMap battleMap,
            DateTime startDate,
            double maxActionPoints,
            double actionPointsRecoveryRate,
            Set<Troop>? troops,
            Set<Team>? teams)
        def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DateTime creationDate,
            BattleMap battleMap,
            DateTime startDate,
            double maxActionPoints,
            double actionPointsRecoveryRate,
            Set<Troop>? troops,
            Set<Team>? teams)?
        def,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DateTime creationDate,
            BattleMap battleMap,
            DateTime startDate,
            double maxActionPoints,
            double actionPointsRecoveryRate,
            Set<Troop>? troops,
            Set<Team>? teams)?
        def,
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

  @JsonKey(ignore: true)
  $BattleCopyWith<Battle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattleCopyWith<$Res> {
  factory $BattleCopyWith(Battle value, $Res Function(Battle) then) =
      _$BattleCopyWithImpl<$Res, Battle>;
  @useResult
  $Res call(
      {DateTime creationDate,
      BattleMap battleMap,
      DateTime startDate,
      double maxActionPoints,
      double actionPointsRecoveryRate,
      Set<Troop>? troops,
      Set<Team>? teams});

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
    Object? creationDate = null,
    Object? battleMap = null,
    Object? startDate = null,
    Object? maxActionPoints = null,
    Object? actionPointsRecoveryRate = null,
    Object? troops = freezed,
    Object? teams = freezed,
  }) {
    return _then(_value.copyWith(
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      battleMap: null == battleMap
          ? _value.battleMap
          : battleMap // ignore: cast_nullable_to_non_nullable
              as BattleMap,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      maxActionPoints: null == maxActionPoints
          ? _value.maxActionPoints
          : maxActionPoints // ignore: cast_nullable_to_non_nullable
              as double,
      actionPointsRecoveryRate: null == actionPointsRecoveryRate
          ? _value.actionPointsRecoveryRate
          : actionPointsRecoveryRate // ignore: cast_nullable_to_non_nullable
              as double,
      troops: freezed == troops
          ? _value.troops
          : troops // ignore: cast_nullable_to_non_nullable
              as Set<Troop>?,
      teams: freezed == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as Set<Team>?,
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
  $Res call(
      {DateTime creationDate,
      BattleMap battleMap,
      DateTime startDate,
      double maxActionPoints,
      double actionPointsRecoveryRate,
      Set<Troop>? troops,
      Set<Team>? teams});

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
    Object? creationDate = null,
    Object? battleMap = null,
    Object? startDate = null,
    Object? maxActionPoints = null,
    Object? actionPointsRecoveryRate = null,
    Object? troops = freezed,
    Object? teams = freezed,
  }) {
    return _then(_$BattleImpl(
      creationDate: null == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      battleMap: null == battleMap
          ? _value.battleMap
          : battleMap // ignore: cast_nullable_to_non_nullable
              as BattleMap,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      maxActionPoints: null == maxActionPoints
          ? _value.maxActionPoints
          : maxActionPoints // ignore: cast_nullable_to_non_nullable
              as double,
      actionPointsRecoveryRate: null == actionPointsRecoveryRate
          ? _value.actionPointsRecoveryRate
          : actionPointsRecoveryRate // ignore: cast_nullable_to_non_nullable
              as double,
      troops: freezed == troops
          ? _value.troops
          : troops // ignore: cast_nullable_to_non_nullable
              as Set<Troop>?,
      teams: freezed == teams
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as Set<Team>?,
    ));
  }
}

/// @nodoc

class _$BattleImpl extends _Battle {
  _$BattleImpl(
      {required this.creationDate,
      required this.battleMap,
      required this.startDate,
      required this.maxActionPoints,
      required this.actionPointsRecoveryRate,
      this.troops,
      this.teams})
      : super._();

  @override
  final DateTime creationDate;
  @override
  final BattleMap battleMap;
  @override
  final DateTime startDate;
  @override
  final double maxActionPoints;
  @override
  final double actionPointsRecoveryRate;
  @override
  final Set<Troop>? troops;
  @override
  final Set<Team>? teams;

  @override
  String toString() {
    return 'Battle.def(creationDate: $creationDate, battleMap: $battleMap, startDate: $startDate, maxActionPoints: $maxActionPoints, actionPointsRecoveryRate: $actionPointsRecoveryRate, troops: $troops, teams: $teams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BattleImpl &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.battleMap, battleMap) ||
                other.battleMap == battleMap) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.maxActionPoints, maxActionPoints) ||
                other.maxActionPoints == maxActionPoints) &&
            (identical(
                    other.actionPointsRecoveryRate, actionPointsRecoveryRate) ||
                other.actionPointsRecoveryRate == actionPointsRecoveryRate) &&
            const DeepCollectionEquality().equals(other.troops, troops) &&
            const DeepCollectionEquality().equals(other.teams, teams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      creationDate,
      battleMap,
      startDate,
      maxActionPoints,
      actionPointsRecoveryRate,
      const DeepCollectionEquality().hash(troops),
      const DeepCollectionEquality().hash(teams));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BattleImplCopyWith<_$BattleImpl> get copyWith =>
      __$$BattleImplCopyWithImpl<_$BattleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DateTime creationDate,
            BattleMap battleMap,
            DateTime startDate,
            double maxActionPoints,
            double actionPointsRecoveryRate,
            Set<Troop>? troops,
            Set<Team>? teams)
        def,
  }) {
    return def(creationDate, battleMap, startDate, maxActionPoints,
        actionPointsRecoveryRate, troops, teams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DateTime creationDate,
            BattleMap battleMap,
            DateTime startDate,
            double maxActionPoints,
            double actionPointsRecoveryRate,
            Set<Troop>? troops,
            Set<Team>? teams)?
        def,
  }) {
    return def?.call(creationDate, battleMap, startDate, maxActionPoints,
        actionPointsRecoveryRate, troops, teams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DateTime creationDate,
            BattleMap battleMap,
            DateTime startDate,
            double maxActionPoints,
            double actionPointsRecoveryRate,
            Set<Troop>? troops,
            Set<Team>? teams)?
        def,
    required TResult orElse(),
  }) {
    if (def != null) {
      return def(creationDate, battleMap, startDate, maxActionPoints,
          actionPointsRecoveryRate, troops, teams);
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
}

abstract class _Battle extends Battle {
  factory _Battle(
      {required final DateTime creationDate,
      required final BattleMap battleMap,
      required final DateTime startDate,
      required final double maxActionPoints,
      required final double actionPointsRecoveryRate,
      final Set<Troop>? troops,
      final Set<Team>? teams}) = _$BattleImpl;
  _Battle._() : super._();

  @override
  DateTime get creationDate;
  @override
  BattleMap get battleMap;
  @override
  DateTime get startDate;
  @override
  double get maxActionPoints;
  @override
  double get actionPointsRecoveryRate;
  @override
  Set<Troop>? get troops;
  @override
  Set<Team>? get teams;
  @override
  @JsonKey(ignore: true)
  _$$BattleImplCopyWith<_$BattleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

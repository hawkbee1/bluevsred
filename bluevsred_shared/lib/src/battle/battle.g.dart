// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BattleImpl _$$BattleImplFromJson(Map<String, dynamic> json) => _$BattleImpl(
      creationDate: DateTime.parse(json['creationDate'] as String),
      battleMap: BattleMap.fromJson(json['battleMap'] as Map<String, dynamic>),
      startDate: DateTime.parse(json['startDate'] as String),
      maxActionPoints: (json['maxActionPoints'] as num).toDouble(),
      actionPointsRecoveryRate:
          (json['actionPointsRecoveryRate'] as num).toDouble(),
      troops: (json['troops'] as List<dynamic>?)
          ?.map((e) => Troop.fromJson(e as Map<String, dynamic>))
          .toSet(),
      teams: (json['teams'] as List<dynamic>?)
          ?.map((e) => Team.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$$BattleImplToJson(_$BattleImpl instance) =>
    <String, dynamic>{
      'creationDate': instance.creationDate.toIso8601String(),
      'battleMap': instance.battleMap,
      'startDate': instance.startDate.toIso8601String(),
      'maxActionPoints': instance.maxActionPoints,
      'actionPointsRecoveryRate': instance.actionPointsRecoveryRate,
      'troops': instance.troops?.toList(),
      'teams': instance.teams?.toList(),
    };

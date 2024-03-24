// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BattleImpl _$$BattleImplFromJson(Map<String, dynamic> json) => _$BattleImpl(
      startDate: DateTime.parse(json['startDate'] as String),
      battleMap: BattleMap.fromJson(json['battleMap'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BattleImplToJson(_$BattleImpl instance) =>
    <String, dynamic>{
      'startDate': instance.startDate.toIso8601String(),
      'battleMap': instance.battleMap,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'troop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TroopImpl _$$TroopImplFromJson(Map<String, dynamic> json) => _$TroopImpl(
      id: json['id'] as String,
      path: json['path'] as String,
      gamePlayer:
          GamePlayer.fromJson(json['gamePlayer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TroopImplToJson(_$TroopImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'gamePlayer': instance.gamePlayer,
    };

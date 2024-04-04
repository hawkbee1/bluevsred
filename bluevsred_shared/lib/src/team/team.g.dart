// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamImpl _$$TeamImplFromJson(Map<String, dynamic> json) => _$TeamImpl(
      name: json['name'] as String,
      colorCode: json['colorCode'] as String,
      gamePlayers: (json['gamePlayers'] as List<dynamic>)
          .map((e) => GamePlayer.fromJson(e as Map<String, dynamic>))
          .toSet(),
    );

Map<String, dynamic> _$$TeamImplToJson(_$TeamImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'colorCode': instance.colorCode,
      'gamePlayers': instance.gamePlayers.toList(),
    };

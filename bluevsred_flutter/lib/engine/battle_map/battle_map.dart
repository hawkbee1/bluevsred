import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_map.freezed.dart';
part 'battle_map.g.dart';

@freezed
class BattleMap with _$BattleMap {
  const BattleMap._();
  const factory BattleMap() = _BattleMap;
  final String path = 'default_map.png';
  factory BattleMap.fromJson(Map<String, Object?> json) =>
      _$BattleMapFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serverpod_serialization/serverpod_serialization.dart';

part 'game_player.freezed.dart';
part 'game_player.g.dart';

@freezed
class GamePlayer with _$GamePlayer {
  factory GamePlayer({required String name}) = _GamePlayer;
  factory GamePlayer.fromJson(Map<String, Object?> json) =>
      _$GamePlayerFromJson(json);
}

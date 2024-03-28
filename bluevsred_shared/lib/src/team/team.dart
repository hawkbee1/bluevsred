import '../game_player/game_player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@freezed
class Team with _$Team {
  Team._();
  factory Team({required String name, required String colorCode}) = _Team;
  factory Team.fromJson(Map<String, Object?> json) => _$TeamFromJson(json);
  final Set<GamePlayer> gamePlayers = {};

  void remove(GamePlayer gamePlayer) {
    gamePlayers.removeWhere((element) => element == gamePlayer);
  }
}

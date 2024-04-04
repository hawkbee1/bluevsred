import '../game_player/game_player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Team with _$Team {
  Team._();
  factory Team({required String name, required String colorCode, required Set<GamePlayer> gamePlayers}) = _Team;
  factory Team.fromJson(Map<String, Object?> json,
  ) => _$TeamFromJson(json);

  void remove(GamePlayer gamePlayer) {
    gamePlayers.removeWhere((element) => element == gamePlayer);
  }
}

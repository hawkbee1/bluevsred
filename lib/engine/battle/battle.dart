import 'package:endless_runner/engine/battle_map/battle_map.dart';
import 'package:endless_runner/engine/game_player/game_player.dart';
import 'package:endless_runner/engine/team/team.dart';
import 'package:endless_runner/engine/troops/troop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle.freezed.dart';
part 'battle.g.dart';

@freezed
class Battle with _$Battle {
  Battle._();
  factory Battle.def(
      {required DateTime startDate, required BattleMap battleMap}) = _Battle;
  factory Battle() {
    return _Battle(startDate: _dateTimeNow(), battleMap: const BattleMap());
  }
  final Set<Troop> troops = {};
  final Set<Team> teams = {};
  static DateTime _dateTimeNow() {
    return DateTime.now().toUtc();
  }

  factory Battle.fromJson(Map<String, Object?> json) => _$BattleFromJson(json);

  void addTroops({required List<Troop> newTroops}) {
    troops.addAll(newTroops);
  }

  void addTeams({required List<Team> newTeams}) {
    teams.addAll(newTeams);
  }

  void addGamePlayersToTeam(
      {required List<GamePlayer> newGamePlayers, required Team team}) {
// Remove Players that are already in the battle
    final isPlayerAlreadyInBattle = [];
    for (final list in teams) {
      if (list != team) {
        isPlayerAlreadyInBattle.addAll(list.gamePlayers);
      }
    }
    team.gamePlayers.addAll(newGamePlayers);
    team.gamePlayers
        .removeWhere((element) => isPlayerAlreadyInBattle.contains(element));

    // Be certain that team is part of this battle
    addTeams(newTeams: [team]);

    // for (final element in teams) {
    //   element.gamePlayers.addAll(newGamePlayers);
    // }
  }
}

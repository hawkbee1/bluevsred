
import '../battle_map/battle_map.dart';
import '../game_player/game_player.dart';
import '../team/team.dart';
import '../troops/troop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serverpod_serialization/serverpod_serialization.dart';

part 'battle.freezed.dart';
part 'battle.g.dart';

@freezed
class Battle with _$Battle {
  Battle._();
  factory Battle.def(
      {required DateTime creationDate, required BattleMap battleMap, required DateTime startDate, required double maxActionPoints, required double actionPointsRecoveryRate}) = _Battle;
  factory Battle({required DateTime startDate, required double maxActionPoints, required double actionPointsRecoveryRate}) {
    return _Battle(creationDate: _dateTimeNow(), battleMap: const BattleMap(), startDate: startDate, maxActionPoints: maxActionPoints, actionPointsRecoveryRate: actionPointsRecoveryRate);
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
      } else {
        team.gamePlayers.addAll(list.gamePlayers);
      }
    }
    team.gamePlayers.addAll(newGamePlayers);
    team.gamePlayers
        .removeWhere((element) => isPlayerAlreadyInBattle.contains(element));
    // Be certain that team is part of this battle
    addTeams(newTeams: [team]);
  }
}

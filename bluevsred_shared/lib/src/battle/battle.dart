import '../battle_map/battle_map.dart';
import '../game_player/game_player.dart';
import '../team/team.dart';
import '../troops/troop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Battle with _$Battle {
  Battle._();
  factory Battle.def({
    required DateTime creationDate,
    required BattleMap battleMap,
    required DateTime startDate,
    required double maxActionPoints,
    required double actionPointsRecoveryRate,
    Set<Troop>? troops,
    Set<Team>? teams,
  }) = _Battle;
  factory Battle({
    required final DateTime startDate,
    required final double maxActionPoints,
    required final double actionPointsRecoveryRate,
  }) {
    return _Battle(
      creationDate: _dateTimeNow(),
      battleMap: const BattleMap(),
      startDate: startDate,
      maxActionPoints: maxActionPoints,
      actionPointsRecoveryRate: actionPointsRecoveryRate,
      troops: {},
      teams: {},
    );
  }
  static DateTime _dateTimeNow() {
    return DateTime.now().toUtc();
  }


  void addTroops({required List<Troop> newTroops}) {
    troops!.addAll(newTroops);
  }

  void addTeams({required List<Team> newTeams}) {
    teams!.addAll(newTeams);
  }

  void addGamePlayersToTeam(
      {required List<GamePlayer> newGamePlayers, required Team team}) {
// Remove Players that are already in the battle
    final isPlayerAlreadyInBattle = [];
    for (final list in teams!) {
      if (list.name != team.name) {
        isPlayerAlreadyInBattle.addAll(list.gamePlayers);
      }
    }
    newGamePlayers
        .removeWhere((element) => isPlayerAlreadyInBattle.contains(element));
    // Be certain that team is part of this battle
    // addTeams(newTeams: [team]);
    for (final list in teams!) {
      if (list.name == team.name) {
        list.gamePlayers.addAll(newGamePlayers);
      }
    }
  }
}

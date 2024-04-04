import 'package:bluevsred_shared/src/battle/battle.dart';
import 'package:bluevsred_shared/src/game_player/game_player.dart';
import 'package:bluevsred_shared/src/team/team.dart';
import 'package:bluevsred_shared/src/troops/troop.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // troop, player, game,

  group('Game global description', () {
    group(
        'This game let players in teams engage their troops in battles on a map.',
        () {
      test('Troop added to a battle is in the list of troops', () {
        final gamePlayer = GamePlayer(name: 'test player name');
        final troop = Troop(gamePlayer: gamePlayer);
        final battle = Battle(
            startDate: DateTime.now().toUtc().add(const Duration(minutes: 1)),
            maxActionPoints: 30,
            actionPointsRecoveryRate: 1);
        battle.addTroops(newTroops: [troop]);
        expect(battle.troops, contains(troop));
      });
      test('Troop is added only once to a battle (already added)', () {
        final gamePlayer = GamePlayer(name: 'test player name');
        final troop = Troop(gamePlayer: gamePlayer);
        final battle = Battle(
            startDate: DateTime.now().toUtc().add(const Duration(minutes: 1)),
            maxActionPoints: 30,
            actionPointsRecoveryRate: 1);
        battle.addTroops(newTroops: [troop]);
        battle.addTroops(newTroops: [troop]);
        final resultingTroopList = List.from(battle.troops!);
        resultingTroopList.remove((element) => element != troop);
        expect(resultingTroopList.length, equals(1));
      });
      test(
          'Troop is added only once to a battle (attempt to add same troop twice in the same list)',
          () {
        final gamePlayer = GamePlayer(name: 'test player name');
        final troop = Troop(gamePlayer: gamePlayer);
        final battle = Battle(
            startDate: DateTime.now().toUtc().add(const Duration(minutes: 1)),
            maxActionPoints: 30,
            actionPointsRecoveryRate: 1);
        battle.addTroops(newTroops: [troop, troop]);
        final resultingTroopList = List.from(battle.troops!);
        resultingTroopList.remove((element) => element != troop);
        expect(resultingTroopList.length, equals(1));
      });
      test('Team added to a battle is in the list of teams', () {
        final team = Team(
          name: 'test team blue',
          colorCode: '0000FF',
          gamePlayers: {},
        );
        final battle = Battle(
            startDate: DateTime.now().toUtc().add(const Duration(minutes: 1)),
            maxActionPoints: 30,
            actionPointsRecoveryRate: 1);
        battle.addTeams(newTeams: [team]);
        expect(battle.teams, contains(team));
      });
      test('Team is added only once to a battle (already added)', () {
        final team = Team(
          name: 'test team blue',
          colorCode: '0000FF',
          gamePlayers: {},
        );
        final battle = Battle(
            startDate: DateTime.now().toUtc().add(const Duration(minutes: 1)),
            maxActionPoints: 30,
            actionPointsRecoveryRate: 1);
        battle.addTeams(newTeams: [team]);
        battle.addTeams(newTeams: [team]);
        final resultingTeamList = List.from(battle.teams!);
        resultingTeamList.remove((element) => element != team);
        expect(resultingTeamList.length, equals(1));
      });
      test(
          'Team is added only once to a battle (attempt to add same team twice in the same list)',
          () {
        final team = Team(
          name: 'test team blue',
          colorCode: '0000FF',
          gamePlayers: {},
        );
        final battle = Battle(
            startDate: DateTime.now().toUtc().add(const Duration(minutes: 1)),
            maxActionPoints: 30,
            actionPointsRecoveryRate: 1);
        battle.addTeams(newTeams: [team, team]);
        final resultingTeamList = List.from(battle.teams!);
        resultingTeamList.remove((element) => element != team);
        expect(resultingTeamList.length, equals(1));
      });
      test('Player added to a team which is in a battle, is in the battle.',
          () {
        final battle = Battle(
            startDate: DateTime.now().toUtc().add(const Duration(minutes: 1)),
            maxActionPoints: 30,
            actionPointsRecoveryRate: 1);
        final team = Team(
          name: 'test team blue',
          colorCode: '0000FF',
          gamePlayers: {},
        );
        final gamePlayer = GamePlayer(name: 'test player');
        battle.addTeams(newTeams: [team]);
        battle.addGamePlayersToTeam(newGamePlayers: [gamePlayer], team: team);
        final List<Team> resultingTeamLinst = List<Team>.from(battle.teams!);
        resultingTeamLinst.removeWhere((element) {
          if (element.name == team.name) {
            expect(element.gamePlayers, contains(gamePlayer));
          }
          return element.name != team.name;
        });

        expect(resultingTeamLinst.length, equals(1));
      });
      test('A player can be added to a team only once.', () {
        final team = Team(
          name: 'test team blue',
          colorCode: '0000FF',
          gamePlayers: {},
        );
        final gamePlayer = GamePlayer(name: 'test player');
        final battle = Battle(
            startDate: DateTime.now().toUtc().add(const Duration(minutes: 1)),
            maxActionPoints: 30,
            actionPointsRecoveryRate: 1);
        battle.addTeams(newTeams: [team]);
        battle.addGamePlayersToTeam(
            newGamePlayers: [gamePlayer, gamePlayer], team: team);
        battle.addGamePlayersToTeam(newGamePlayers: [gamePlayer], team: team);

        final resultingGamePlayerList = [];
        for (final element in battle.teams!) {
          resultingGamePlayerList.addAll(element.gamePlayers);
        }
        resultingGamePlayerList.remove((element) => element != gamePlayer);
        expect(resultingGamePlayerList.length, equals(1));
      });
      test('A player can be added only once to a battle.', () {
        final teamBlue = Team(
          name: 'test team blue',
          colorCode: '0000FF',
          gamePlayers: {},
        );
        final teamRed = Team(
          name: 'test team red',
          colorCode: 'FF0000',
          gamePlayers: {},
        );
        final battle = Battle(
            startDate: DateTime.now().toUtc().add(const Duration(minutes: 1)),
            maxActionPoints: 30,
            actionPointsRecoveryRate: 1);
        battle.addTeams(newTeams: [teamRed, teamBlue]);
        final gamePlayer = GamePlayer(name: 'test player');
        battle
            .addGamePlayersToTeam(newGamePlayers: [gamePlayer], team: teamBlue);
        battle
            .addGamePlayersToTeam(newGamePlayers: [gamePlayer], team: teamRed);
        final resultingGamePlayerList = [];
        for (final list in battle.teams!) {
          resultingGamePlayerList.addAll(list.gamePlayers);
        }

        resultingGamePlayerList.remove((element) => element != gamePlayer);
        expect(resultingGamePlayerList.length, equals(1));
      });

      test('A battle has an utc starting date', () async {
        final expectedDate = DateTime.now().toUtc();

        /// Test is positive if
        const range = Duration(seconds: 1);
        final battle = Battle(
            startDate: DateTime.now().toUtc().add(const Duration(minutes: 1)),
            maxActionPoints: 30,
            actionPointsRecoveryRate: 1);
        final timeDifference = battle.creationDate.difference(expectedDate);
        expect(timeDifference, lessThan(range));
      });
      test('We can create a Battle with a specific creationDateTime', () async {
        /// Test is positive if
        const range = Duration(seconds: 1);
        final initialBattle = Battle(
            startDate: DateTime.now().toUtc().add(const Duration(minutes: 1)),
            maxActionPoints: 30,
            actionPointsRecoveryRate: 1);
        final expectedDateTime = initialBattle.creationDate;

        await Future.delayed(range);
        final battle = initialBattle.copyWith(creationDate: expectedDateTime);
        expect(battle.creationDate, equals(expectedDateTime));
      });
    });
  });
  // This game let players engage their troops in battles. Battles are between red
  // and blue teams and end by destruction of a team Headquarters'
}

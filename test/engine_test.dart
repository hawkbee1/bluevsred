import 'package:endless_runner/engine/battle/battle.dart';
import 'package:endless_runner/engine/game_player/game_player.dart';
import 'package:endless_runner/engine/team/team.dart';
import 'package:endless_runner/engine/troops/troop.dart';
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
        final battle = Battle();
        battle.addTroops(newTroops: [troop]);
        expect(battle.troops, contains(troop));
      });
      test('Troop is added only once to a battle (already added)', () {
        final gamePlayer = GamePlayer(name: 'test player name');
        final troop = Troop(gamePlayer: gamePlayer);
        final battle = Battle();
        battle.addTroops(newTroops: [troop]);
        battle.addTroops(newTroops: [troop]);
        final resultingTroopList = List.from(battle.troops);
        resultingTroopList.remove((element) => element != troop);
        expect(resultingTroopList.length, equals(1));
      });
      test(
          'Troop is added only once to a battle (attempt to add same troop twice in the same list)',
          () {
        final gamePlayer = GamePlayer(name: 'test player name');
        final troop = Troop(gamePlayer: gamePlayer);
        final battle = Battle();
        battle.addTroops(newTroops: [troop, troop]);
        final resultingTroopList = List.from(battle.troops);
        resultingTroopList.remove((element) => element != troop);
        expect(resultingTroopList.length, equals(1));
      });
      test(
          'When adding GamePlayer\'s troops to a battle, at least one Commander Troop is added to a battle.',
          () {
        final gamePlayer = GamePlayer(name: 'adding commander');
        final troop = CommanderTroop(gamePlayer: gamePlayer);
        final battle = Battle();
        battle.addTroops(newTroops: [troop, troop]);
        final resultingTroopList = List.from(battle.troops);
        resultingTroopList.remove((element) => element != troop);
        expect(resultingTroopList.length, equals(1));
      });
      test(
          'When adding troops, only one Commander of a GamePlayer GameTroops is added to a battle.',
          () {
        final gamePlayer = GamePlayer(name: 'test player name');
        final troop = CommanderTroop(gamePlayer: gamePlayer);
        final battle = Battle();
        battle.addTroops(newTroops: [troop, troop]);
        final resultingTroopList = List.from(battle.troops);
        resultingTroopList.remove((element) => element != troop);
        expect(resultingTroopList.length, equals(1));
      });
      test(
          'When adding a Commander to a battle he must not be already part of another battle.',
          () {
        final gamePlayer = GamePlayer(name: 'test player name');
        final troop = CommanderTroop(gamePlayer: gamePlayer);
        final battle = Battle();
        battle.addTroops(newTroops: [troop, troop]);
        final resultingTroopList = List.from(battle.troops);
        resultingTroopList.remove((element) => element != troop);
        expect(resultingTroopList.length, equals(1));
      });
      test('Team added to a battle is in the list of teams', () {
        final team = Team(
          name: 'test team blue',
          colorCode: '0000FF',
        );
        final battle = Battle();
        battle.addTeams(newTeams: [team]);
        expect(battle.teams, contains(team));
      });
      test('Team is added only once to a battle (already added)', () {
        final team = Team(
          name: 'test team blue',
          colorCode: '0000FF',
        );
        final battle = Battle();
        battle.addTeams(newTeams: [team]);
        battle.addTeams(newTeams: [team]);
        final resultingTeamList = List.from(battle.teams);
        resultingTeamList.remove((element) => element != team);
        expect(resultingTeamList.length, equals(1));
      });
      test(
          'Team is added only once to a battle (attempt to add same team twice in the same list)',
          () {
        final team = Team(
          name: 'test team blue',
          colorCode: '0000FF',
        );
        final battle = Battle();
        battle.addTeams(newTeams: [team, team]);
        final resultingTeamList = List.from(battle.teams);
        resultingTeamList.remove((element) => element != team);
        expect(resultingTeamList.length, equals(1));
      });
      test('Player added to a team which is in a battle, is in the battle.',
          () {
        final battle = Battle();
        final team = Team(
          name: 'test team blue',
          colorCode: '0000FF',
        );
        final gamePlayer = GamePlayer(name: 'test player');
        battle.addTeams(newTeams: [team]);
        battle.addGamePlayersToTeam(newGamePlayers: [gamePlayer], team: team);
        expect(battle.teams, contains(team));
        expect(team.gamePlayers, contains(gamePlayer));
      });
      test('A player can be added to a team only once.', () {
        final team = Team(
          name: 'test team blue',
          colorCode: '0000FF',
        );
        final gamePlayer = GamePlayer(name: 'test player');
        final battle = Battle();
        battle.addGamePlayersToTeam(
            newGamePlayers: [gamePlayer, gamePlayer], team: team);
        battle.addGamePlayersToTeam(newGamePlayers: [gamePlayer], team: team);

        final resultingGamePlayerList = [];
        for (final element in battle.teams) {
          resultingGamePlayerList.addAll(element.gamePlayers);
        }
        resultingGamePlayerList.remove((element) => element != gamePlayer);
        expect(resultingGamePlayerList.length, equals(1));
      });
      test(
          'When adding players in a team already in battle, ensure we don\'t loose old players',
          () {
        final team = Team(
          name: 'test team blue',
          colorCode: '0000FF',
        );
        final gamePlayer1 = GamePlayer(name: 'first test player');
        final gamePlayer2 = GamePlayer(name: 'second test player');

        final battle = Battle();
        battle.addGamePlayersToTeam(newGamePlayers: [gamePlayer1], team: team);

        battle.addGamePlayersToTeam(newGamePlayers: [gamePlayer2], team: team);

        final resultingGamePlayerList = [];
        for (final element in battle.teams) {
          resultingGamePlayerList.addAll(element.gamePlayers);
        }
        expect(resultingGamePlayerList, contains(gamePlayer1));
        expect(resultingGamePlayerList, contains(gamePlayer2));
      });
      test('A player can be added only once to a battle.', () {
        final teamBlue = Team(
          name: 'test team blue',
          colorCode: '0000FF',
        );
        final teamRed = Team(
          name: 'test team blue',
          colorCode: 'FF0000',
        );
        final battle = Battle();
        battle.addTeams(newTeams: [teamRed, teamBlue]);
        final gamePlayer = GamePlayer(name: 'test player');
        battle
            .addGamePlayersToTeam(newGamePlayers: [gamePlayer], team: teamBlue);
        battle
            .addGamePlayersToTeam(newGamePlayers: [gamePlayer], team: teamRed);
        final resultingGamePlayerList = [];
        for (final list in battle.teams) {
          resultingGamePlayerList.addAll(list.gamePlayers);
        }

        resultingGamePlayerList.remove((element) => element != gamePlayer);
        expect(resultingGamePlayerList.length, equals(1));
      });

      test('A battle has an utc starting date', () async {
        final expectedDate = DateTime.now().toUtc();

        /// Test is positive if
        const range = Duration(seconds: 1);
        final battle = Battle();
        final timeDifference = battle.startDate.difference(expectedDate);
        expect(timeDifference, lessThan(range));
      });
      test('We can create a Battle with a specific startDateTime', () async {
        /// Test is positive if
        const range = Duration(seconds: 1);
        final initialBattle = Battle();
        final expectedDateTime = initialBattle.startDate;

        await Future.delayed(range);
        final battle = initialBattle.copyWith(startDate: expectedDateTime);
        expect(battle.startDate, equals(expectedDateTime));
      });
    });
  });
  // This game let players engage their troops in battles. Battles are between red
  // and blue teams and end by destruction of a team Headquarters'
}

class CommanderTroop {
}

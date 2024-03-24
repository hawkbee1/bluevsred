import 'package:endless_runner/engine/battle/battle.dart';
import 'package:endless_runner/engine/game_player/game_player.dart';
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
      test('description', () => null);
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

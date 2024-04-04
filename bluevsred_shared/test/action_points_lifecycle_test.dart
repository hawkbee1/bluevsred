import 'package:bluevsred_shared/src/battle/battle.dart';
import 'package:bluevsred_shared/src/game_player/game_player.dart';
import 'package:bluevsred_shared/src/troops/troop.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final initialBattle1 = Battle(
      startDate: DateTime.now().toUtc().add(const Duration(minutes: 1)),
      maxActionPoints: 30,
      actionPointsRecoveryRate: 1);
  final initialGamePlayer1 = GamePlayer(name: 'test player name');
  final initialTroop1 = Troop(gamePlayer: initialGamePlayer1);

  group('Action Points lifecycle', () {
    test(
        'Before a battle, When a troop is added, it gets the maximum Action Points allowed for this battle (30)',
        () {
      const double maxActionPoints = 30;
      final battle = initialBattle1.copyWith(maxActionPoints: maxActionPoints);
      final testTroop = initialTroop1.copyWith();

      battle.addTroops(newTroops: [testTroop]);
      var isTestTroopFound = false;
      for (final battleTroop in battle.troops!) {
        if (battleTroop == testTroop) {
          expect(battleTroop.actionPoints, equals(maxActionPoints));
          isTestTroopFound = true;
          return;
        }
      }
      expect(isTestTroopFound, equals(true));
    });
    // test(
    //     'Before a battle, When a troop is added, it gets the maximum Action Points allowed for this battle (10)',
    //     () {
    //   const double maxActionPoints = 10;
    //   final battle = initialBattle1.copyWith(maxActionPoints: maxActionPoints);
    //   final testTroop = initialTroop1.copyWith();

    //   battle.addTroops(newTroops: [testTroop]);
    //   var isTestTroopFound = false;
    //   for (final battleTroop in battle.troops!) {
    //     if (battleTroop == testTroop) {
    //       expect(battleTroop.actionPoints, equals(maxActionPoints));
    //       isTestTroopFound = true;
    //       return;
    //     }
    //   }
    //   expect(isTestTroopFound, equals(true));
    // });
  });
  // This game let players engage their troops in battles. Battles are between red
  // and blue teams and end by destruction of a team Headquarters'
}

import 'package:bluevsred/entities/game_action.dart';
import 'package:bluevsred/entities/game_unit.dart';
import 'package:test/test.dart';

void main() {
  group('Throw an error if acting unit does not have enough action points', () {
    final GameUnit activeUnit = GameUnit();
    final GameAction gameAction = GameAction(activeUnit: activeUnit);

    /// For all the those tests the acting unit has 10 AP
    setUp(() {
      activeUnit.actionPoints = 10;
    });

    test('canActionHappen return Right(true) when Unit has enough points', () {
      gameAction.actionPointsCost = 5;
      var response = gameAction.canActionHappen();
      bool right;
      response.fold((l) => null, (r) => right = r);
      expect(right, isTrue);
    });

    test('canActionHappen return Right(true) when Unit has exactly the points',
        () {
      gameAction.actionPointsCost = 10;
      var response = gameAction.canActionHappen();
      bool right;
      response.fold((l) => null, (r) => right = r);
      expect(right, isTrue);
    });

    test('canActionHappen return Right(Error) when Unit has not enough points',
        () {
      gameAction.actionPointsCost = 20;
      var response = gameAction.canActionHappen();
      var left;
      bool isLeftAnError = false;
      response.fold((l) => left = l, (r) => null);
      left is Error ? isLeftAnError = true : isLeftAnError = false;
      expect(isLeftAnError, isTrue);
    });
  });
}

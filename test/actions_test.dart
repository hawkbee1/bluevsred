import 'package:bluevsred/entities/game_action.dart';
import 'package:bluevsred/entities/game_unit.dart';
import 'package:test/test.dart';

void main() {
  group('Can unit do action ?', () {
    final GameUnit activeUnit = GameUnit();
    final GameAction gameAction = GameAction();

    /// For all the those tests the acting unit has 10 AP
    setUp(() {
      activeUnit.actionPoints = 10;
      gameAction.activeUnit = activeUnit;
    });

    test('canActionHappen return Right(true) when Unit has enough points', () {
      gameAction.actionPointsCost = 5;
      checkCanActionHappen(gameAction, false, true);
    });

    test('canActionHappen return Right(true) when Unit has exactly the points',
        () {
      gameAction.actionPointsCost = 10;
      checkCanActionHappen(gameAction, false, true);
    });

    test('canActionHappen return Left(Error) when Unit has not enough points',
        () {
      gameAction.actionPointsCost = 20;
      checkCanActionHappen(gameAction, true, null);
    });
  });
}

void checkCanActionHappen(
  GameAction gameAction,
  bool isLeftAnErrorExpectation,
  bool rightExpectation,
) {
  var response = gameAction.canActionHappen();
  var left;
  var right;
  bool isLeftAnError = false;
  response.fold((l) => left = l, (r) => right = r);
  left is Error ? isLeftAnError = true : isLeftAnError = false;
  expect(isLeftAnError, isLeftAnErrorExpectation);
  expect(right, rightExpectation);
}

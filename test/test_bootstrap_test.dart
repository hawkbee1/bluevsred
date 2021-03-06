import 'package:dartz/dartz.dart';
import 'package:test/test.dart';

/// display map
/// put units on the map
/// move units
/// select unit
/// manage action points
/// add action point
/// remove action points
/// time based system

/// Unit has between 0 and 30 action points
/// Checking during events
///
///

void main() {
  group('Throw an error if acting unit does not have enough action points', () {
    final GameUnit gameUnit = GameUnit();
    final GameAction gameAction = GameAction();

    /// For all the those tests the acting unit has 10 AP
    setUp(() {
      gameUnit.actionPoints = 10;
    });

    test('canActionHappen return Right(true) when Unit has enough points', () {
      gameAction.actionPointsCost = 5;
      var response = gameAction.canActionHappen();
      bool right;
      response.fold((l) => null, (r) => right = r);
      expect(right, true);
    });
  });
}

class GameAction {
  int actionPointsCost = 0;

  Either<Error, bool> canActionHappen() {
    return Right(true);
  }
}

class GameUnit {
  int actionPoints = 0;
}

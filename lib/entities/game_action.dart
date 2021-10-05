import 'package:bluevsred/entities/game_unit.dart';
import 'package:dartz/dartz.dart';
import 'package:mobx/mobx.dart';

part 'game_action.g.dart';

class GameAction extends _GameActionBase with _$GameAction {}

abstract class _GameActionBase with Store {
  @observable
  GameUnit activeUnit;

  @observable
  int actionPointsCost = 0;

  @action
  Either<Error, bool> canActionHappen() {
    if (actionPointsCost > activeUnit.actionPoints) return Left(Error());
    return Right(true);
  }

  @action
  Either<Error, bool> executeAction() {
    return Right(true);
  }
}

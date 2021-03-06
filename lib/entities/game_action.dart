import 'package:bluevsred/entities/game_unit.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'game_action.g.dart';

class GameAction extends _GameActionBase with _$GameAction {
  GameAction({@required this.activeUnit});
  @override
  final GameUnit activeUnit;
}

abstract class _GameActionBase with Store {
  _GameActionBase({@required this.activeUnit});
  final GameUnit activeUnit;

  @observable
  int actionPointsCost = 0;

  @action
  Either<Error, bool> canActionHappen() {
    if (actionPointsCost > activeUnit.actionPoints) return Left(Error());
    return Right(true);
  }
}

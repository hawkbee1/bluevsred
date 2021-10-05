import 'dart:math';

import 'package:bluevsred/entities/game_action.dart';
import 'package:mobx/mobx.dart';

part 'game_unit.g.dart';

class GameUnit extends _GameUnitBase with _$GameUnit {}

abstract class _GameUnitBase with Store {
  @observable
  int actionPoints = 0;
  @observable
  Point position;
  @observable
  int healthPoints = 0;
  @observable
  int speed = 0;
  @observable
  int camouflage = 0;
  @observable
  int sight = 0;
  @observable
  List<GameAction> actionList = [];
}

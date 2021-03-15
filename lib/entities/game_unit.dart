import 'dart:math';

import 'package:bluevsred/entities/game_action.dart';

class GameUnit {
  int actionPoints = 0;
  Point position;
  int healthPoints = 0;
  int speed = 0;
  int camouflage = 0;
  int sight = 0;
  List<GameAction> actionList = [];
}

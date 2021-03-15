import 'package:bluevsred/entities/game_action.dart';
import 'package:bluevsred/entities/game_position.dart';

class GameUnit {
  int actionPoints = 0;
  GamePosition position;
  int healthPoints = 0;
  int speed = 0;
  int camouflage = 0;
  int sight = 0;
  List<GameAction> actionList = [];
}

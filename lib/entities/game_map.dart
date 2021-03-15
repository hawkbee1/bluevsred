import 'dart:math';

import 'package:bluevsred/entities/game_layer.dart';

class GameMap {
  Point mapSize = Point(10, 5);
  List<GameLayer> layerList = [];

  bool checkMapProperties() {
    bool response = true;
    layerList.forEach((layer) {
      print(layer.position.x);
      print(layer.position.y);
      if (!isLayerInsideMap(layer)) {
        response = false;
      }
    });
    return response;
  }

  bool isLayerInsideMap(GameLayer layer) {
    if (layer.position.x < 0 ||
        layer.position.x > mapSize.x ||
        layer.position.y < 0 ||
        layer.position.y > mapSize.y) {
      return false;
    }
    return true;
  }
}

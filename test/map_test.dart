import 'dart:math';

import 'package:bluevsred/entities/game_layer.dart';
import 'package:bluevsred/entities/game_map.dart';
import 'package:test/test.dart';

void main() {
  group('Check map Properties', () {
    final GameMap gameMap = GameMap();
    final List<GameLayer> goodLayerList = [];
    setUpAll(() {});

    test('Every Layers of the map is inside the map', () {
      final GameLayer wrongLayerX = GameLayer(position: Point(15, 3));
      gameMap.layerList.addAll(goodLayerList);
      expect(gameMap.checkMapProperties(), true);
      gameMap.layerList.add(wrongLayerX);
      expect(gameMap.checkMapProperties(), false);
    });
  });
}

import 'dart:math';

import 'package:bluevsred/entities/game_map.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

void setup() async {
  sl.registerLazySingleton<GameMap>(() {
    GameMap newGameMap = GameMap();
    newGameMap.mapSize = Point(100.0, 150.0);
    return newGameMap;
  });
}

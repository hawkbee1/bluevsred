import 'package:bluevsred/entities/game_map.dart';
import 'package:bluevsred/entities/game_map_state.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

void setup() async {
  sl.registerLazySingleton<GameMap>(() => GameMap());
  sl.registerLazySingleton<GameMapState>(() => GameMapState());
}

class BasicGround extends StatelessWidget {
  const BasicGround({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1,
      height: 1,
      child: Container(
        color: Colors.brown,
      ),
    );
  }
}

class RiverGround extends StatelessWidget {
  const RiverGround({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1,
      height: 1,
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}

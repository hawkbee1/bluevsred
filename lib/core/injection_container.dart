import 'dart:math';

import 'package:bluevsred/entities/game_layer.dart';
import 'package:bluevsred/entities/game_map.dart';
import 'package:bluevsred/entities/game_map_state.dart';
import 'package:bluevsred/testUnit.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

void setup() async {
  sl.registerLazySingleton<GameMap>(() {
    GameMap newGameMap = GameMap();
    newGameMap.mapSize = Point(100.0, 150.0);
    newGameMap.layerList = [
      GameLayer(
          position: Point(10.0, 10.0),
          layerType: LayerType.ground,
          layerDisplay: BasicGround()),
      GameLayer(
          position: Point(12.0, 10.0),
          layerType: LayerType.ground,
          layerDisplay: BasicGround()),
      GameLayer(
          position: Point(13.0, 10.0),
          layerType: LayerType.ground,
          layerDisplay: BasicGround()),
      GameLayer(
          position: Point(14.0, 14.0),
          layerType: LayerType.ground,
          layerDisplay: BasicGround()),
      GameLayer(
          position: Point(15.0, 15.0),
          layerType: LayerType.ground,
          layerDisplay: BasicGround()),
      GameLayer(
          position: Point(15.0, 16.0),
          layerType: LayerType.ground,
          layerDisplay: RiverGround()),
      GameLayer(
          position: Point(15.0, 17.0),
          layerType: LayerType.ground,
          layerDisplay: RiverGround()),
      GameLayer(
          position: Point(18.0, 18.0),
          layerType: LayerType.ground,
          layerDisplay: RiverGround()),
      GameLayer(
          position: Point(18.0, 19.0),
          layerType: LayerType.ground,
          layerDisplay: RiverGround()),
      GameLayer(
          position: Point(15.0, 16.0),
          layerType: LayerType.ground,
          layerDisplay: RiverGround()),
      GameLayer(
          position: Point(13.0, 10.0),
          layerType: LayerType.unit,
          layerDisplay: TestUnit()),
    ];
    return newGameMap;
  });
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

/*
<Widget>[
      UnitGestureDetector(
          unitPosition: Point(10.0, 10.0),
          child: SizedBox(
            width: 1,
            height: 1,
            child: Container(
              color: Colors.green,
              child: Transform.translate(
                offset: Offset(-0.57, -0.57),
                child: Transform.scale(
                    scale: 0.05,
                    child: Icon(
                      Icons.ac_unit_rounded,
                      color: Colors.yellowAccent,
                    )),
              ),
            ),
          )),
      Positioned(
          left: 20,
          top: 10,
          child: SizedBox(
            width: 1,
            height: 1,
            child: Container(
              color: Colors.pink,
            ),
          )),
      Positioned(
          left: 25,
          top: 15,
          child: SizedBox(
            width: 1,
            height: 1,
            child: Container(
              color: Colors.pink,
            ),
          )),
      Positioned(
          left: 12,
          top: 50,
          child: SizedBox(
            width: 1,
            height: 1,
            child: Container(
              color: Colors.pink,
            ),
          )),
      Positioned(
          left: 23,
          top: 34,
          child: SizedBox(
            width: 1,
            height: 1,
            child: Container(
              color: Colors.pink,
            ),
          ))
    ];
 */

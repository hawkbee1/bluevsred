import 'dart:math';

import 'package:bluevsred/entities/game_layer.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'game_map.g.dart';

class GameMap extends _GameMap with _$GameMap {}

abstract class _GameMap with Store {
  @observable
  Point mapSize = Point(10.0, 5.0);
  @observable
  List<GameLayer> layerList = [];

  @action
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

  @action
  bool isLayerInsideMap(GameLayer layer) {
    if (layer.position.x < 0 ||
        layer.position.x > mapSize.x ||
        layer.position.y < 0 ||
        layer.position.y > mapSize.y) {
      return false;
    }
    return true;
  }

  @action
  void addGameLayer(
      {Point<double> position, LayerType layerType, Widget layerDisplay}) {
    GameLayer _gameLayer = GameLayer();
    _gameLayer.position = position;
    _gameLayer.layerType = layerType;
    _gameLayer.layerDisplay = layerDisplay;
    layerList.add(_gameLayer);
  }
}

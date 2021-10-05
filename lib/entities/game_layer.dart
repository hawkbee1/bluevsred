import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'game_layer.g.dart';

enum LayerType {
  ground,
  vegetation,
  construction,
  unit,
}

class GameLayer extends _GameLayerBase with _$GameLayer {}

abstract class _GameLayerBase with Store {
  @observable
  Point position = Point(0, 0);
  @observable
  LayerType layerType;
  @observable
  Widget layerDisplay;
}

import 'dart:math';

import 'package:flutter/material.dart';

enum LayerType {
  ground,
  vegetation,
  construction,
  unit,
}

class GameLayer {
  GameLayer({this.position, this.layerType, this.layerDisplay});
  Point position = Point(0, 0);
  final LayerType layerType;
  final Widget layerDisplay;
}

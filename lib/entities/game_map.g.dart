// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_map.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GameMap on _GameMap, Store {
  final _$mapSizeAtom = Atom(name: '_GameMap.mapSize');

  @override
  Point<num> get mapSize {
    _$mapSizeAtom.reportRead();
    return super.mapSize;
  }

  @override
  set mapSize(Point<num> value) {
    _$mapSizeAtom.reportWrite(value, super.mapSize, () {
      super.mapSize = value;
    });
  }

  final _$layerListAtom = Atom(name: '_GameMap.layerList');

  @override
  List<GameLayer> get layerList {
    _$layerListAtom.reportRead();
    return super.layerList;
  }

  @override
  set layerList(List<GameLayer> value) {
    _$layerListAtom.reportWrite(value, super.layerList, () {
      super.layerList = value;
    });
  }

  final _$_GameMapActionController = ActionController(name: '_GameMap');

  @override
  bool checkMapProperties() {
    final _$actionInfo = _$_GameMapActionController.startAction(
        name: '_GameMap.checkMapProperties');
    try {
      return super.checkMapProperties();
    } finally {
      _$_GameMapActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool isLayerInsideMap(GameLayer layer) {
    final _$actionInfo = _$_GameMapActionController.startAction(
        name: '_GameMap.isLayerInsideMap');
    try {
      return super.isLayerInsideMap(layer);
    } finally {
      _$_GameMapActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addGameLayer(
      {Point<double> position, LayerType layerType, Widget layerDisplay}) {
    final _$actionInfo =
        _$_GameMapActionController.startAction(name: '_GameMap.addGameLayer');
    try {
      return super.addGameLayer(
          position: position, layerType: layerType, layerDisplay: layerDisplay);
    } finally {
      _$_GameMapActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mapSize: ${mapSize},
layerList: ${layerList}
    ''';
  }
}

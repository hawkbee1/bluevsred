// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_layer.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GameLayer on _GameLayerBase, Store {
  final _$positionAtom = Atom(name: '_GameLayerBase.position');

  @override
  Point<num> get position {
    _$positionAtom.reportRead();
    return super.position;
  }

  @override
  set position(Point<num> value) {
    _$positionAtom.reportWrite(value, super.position, () {
      super.position = value;
    });
  }

  final _$layerTypeAtom = Atom(name: '_GameLayerBase.layerType');

  @override
  LayerType get layerType {
    _$layerTypeAtom.reportRead();
    return super.layerType;
  }

  @override
  set layerType(LayerType value) {
    _$layerTypeAtom.reportWrite(value, super.layerType, () {
      super.layerType = value;
    });
  }

  final _$layerDisplayAtom = Atom(name: '_GameLayerBase.layerDisplay');

  @override
  Widget get layerDisplay {
    _$layerDisplayAtom.reportRead();
    return super.layerDisplay;
  }

  @override
  set layerDisplay(Widget value) {
    _$layerDisplayAtom.reportWrite(value, super.layerDisplay, () {
      super.layerDisplay = value;
    });
  }

  @override
  String toString() {
    return '''
position: ${position},
layerType: ${layerType},
layerDisplay: ${layerDisplay}
    ''';
  }
}

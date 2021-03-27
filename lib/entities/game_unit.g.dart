// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_unit.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GameUnit on _GameUnitBase, Store {
  final _$actionPointsAtom = Atom(name: '_GameUnitBase.actionPoints');

  @override
  int get actionPoints {
    _$actionPointsAtom.reportRead();
    return super.actionPoints;
  }

  @override
  set actionPoints(int value) {
    _$actionPointsAtom.reportWrite(value, super.actionPoints, () {
      super.actionPoints = value;
    });
  }

  final _$positionAtom = Atom(name: '_GameUnitBase.position');

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

  final _$healthPointsAtom = Atom(name: '_GameUnitBase.healthPoints');

  @override
  int get healthPoints {
    _$healthPointsAtom.reportRead();
    return super.healthPoints;
  }

  @override
  set healthPoints(int value) {
    _$healthPointsAtom.reportWrite(value, super.healthPoints, () {
      super.healthPoints = value;
    });
  }

  final _$speedAtom = Atom(name: '_GameUnitBase.speed');

  @override
  int get speed {
    _$speedAtom.reportRead();
    return super.speed;
  }

  @override
  set speed(int value) {
    _$speedAtom.reportWrite(value, super.speed, () {
      super.speed = value;
    });
  }

  final _$camouflageAtom = Atom(name: '_GameUnitBase.camouflage');

  @override
  int get camouflage {
    _$camouflageAtom.reportRead();
    return super.camouflage;
  }

  @override
  set camouflage(int value) {
    _$camouflageAtom.reportWrite(value, super.camouflage, () {
      super.camouflage = value;
    });
  }

  final _$sightAtom = Atom(name: '_GameUnitBase.sight');

  @override
  int get sight {
    _$sightAtom.reportRead();
    return super.sight;
  }

  @override
  set sight(int value) {
    _$sightAtom.reportWrite(value, super.sight, () {
      super.sight = value;
    });
  }

  final _$actionListAtom = Atom(name: '_GameUnitBase.actionList');

  @override
  List<GameAction> get actionList {
    _$actionListAtom.reportRead();
    return super.actionList;
  }

  @override
  set actionList(List<GameAction> value) {
    _$actionListAtom.reportWrite(value, super.actionList, () {
      super.actionList = value;
    });
  }

  @override
  String toString() {
    return '''
actionPoints: ${actionPoints},
position: ${position},
healthPoints: ${healthPoints},
speed: ${speed},
camouflage: ${camouflage},
sight: ${sight},
actionList: ${actionList}
    ''';
  }
}

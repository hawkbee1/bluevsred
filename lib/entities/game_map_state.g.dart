// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_map_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GameMapState on _GameMapStateBase, Store {
  final _$scaleAtom = Atom(name: '_GameMapStateBase.scale');

  @override
  double get scale {
    _$scaleAtom.reportRead();
    return super.scale;
  }

  @override
  set scale(double value) {
    _$scaleAtom.reportWrite(value, super.scale, () {
      super.scale = value;
    });
  }

  @override
  String toString() {
    return '''
scale: ${scale}
    ''';
  }
}

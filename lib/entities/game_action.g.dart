// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_action.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GameAction on _GameActionBase, Store {
  final _$actionPointsCostAtom = Atom(name: '_GameActionBase.actionPointsCost');

  @override
  int get actionPointsCost {
    _$actionPointsCostAtom.reportRead();
    return super.actionPointsCost;
  }

  @override
  set actionPointsCost(int value) {
    _$actionPointsCostAtom.reportWrite(value, super.actionPointsCost, () {
      super.actionPointsCost = value;
    });
  }

  final _$_GameActionBaseActionController =
      ActionController(name: '_GameActionBase');

  @override
  Either<Error, bool> canActionHappen() {
    final _$actionInfo = _$_GameActionBaseActionController.startAction(
        name: '_GameActionBase.canActionHappen');
    try {
      return super.canActionHappen();
    } finally {
      _$_GameActionBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
actionPointsCost: ${actionPointsCost}
    ''';
  }
}

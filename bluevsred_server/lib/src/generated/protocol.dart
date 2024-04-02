/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'example.dart' as _i3;
import 'toto.dart' as _i4;
import 'package:bluevsred_shared/freezed_custom_class.dart' as _i5;
import 'package:bluevsred_shared/src/troops/troop.dart' as _i6;
import 'package:bluevsred_shared/src/battle/battle.dart' as _i7;
import 'package:bluevsred_shared/src/battle_map/battle_map.dart' as _i8;
import 'package:bluevsred_shared/src/game_player/game_player.dart' as _i9;
import 'package:bluevsred_shared/src/team/team.dart' as _i10;
export 'example.dart';
export 'toto.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    ..._i2.Protocol.targetTableDefinitions
  ];

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i3.Example) {
      return _i3.Example.fromJson(data, this) as T;
    }
    if (t == _i4.Toto) {
      return _i4.Toto.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i3.Example?>()) {
      return (data != null ? _i3.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Toto?>()) {
      return (data != null ? _i4.Toto.fromJson(data, this) : null) as T;
    }
    if (t == _i5.FreezedCustomClass) {
      return _i5.FreezedCustomClass.fromJson(data, this) as T;
    }
    if (t == _i6.Troop) {
      return _i6.Troop.fromJson(data, this) as T;
    }
    if (t == _i7.Battle) {
      return _i7.Battle.fromJson(data, this) as T;
    }
    if (t == _i8.BattleMap) {
      return _i8.BattleMap.fromJson(data, this) as T;
    }
    if (t == _i9.GamePlayer) {
      return _i9.GamePlayer.fromJson(data, this) as T;
    }
    if (t == _i10.Team) {
      return _i10.Team.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i5.FreezedCustomClass?>()) {
      return (data != null ? _i5.FreezedCustomClass.fromJson(data, this) : null)
          as T;
    }
    if (t == _i1.getType<_i6.Troop?>()) {
      return (data != null ? _i6.Troop.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Battle?>()) {
      return (data != null ? _i7.Battle.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.BattleMap?>()) {
      return (data != null ? _i8.BattleMap.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i9.GamePlayer?>()) {
      return (data != null ? _i9.GamePlayer.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i10.Team?>()) {
      return (data != null ? _i10.Team.fromJson(data, this) : null) as T;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i5.FreezedCustomClass) {
      return 'FreezedCustomClass';
    }
    if (data is _i6.Troop) {
      return 'Troop';
    }
    if (data is _i7.Battle) {
      return 'Battle';
    }
    if (data is _i8.BattleMap) {
      return 'BattleMap';
    }
    if (data is _i9.GamePlayer) {
      return 'GamePlayer';
    }
    if (data is _i10.Team) {
      return 'Team';
    }
    if (data is _i3.Example) {
      return 'Example';
    }
    if (data is _i4.Toto) {
      return 'Toto';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'FreezedCustomClass') {
      return deserialize<_i5.FreezedCustomClass>(data['data']);
    }
    if (data['className'] == 'Troop') {
      return deserialize<_i6.Troop>(data['data']);
    }
    if (data['className'] == 'Battle') {
      return deserialize<_i7.Battle>(data['data']);
    }
    if (data['className'] == 'BattleMap') {
      return deserialize<_i8.BattleMap>(data['data']);
    }
    if (data['className'] == 'GamePlayer') {
      return deserialize<_i9.GamePlayer>(data['data']);
    }
    if (data['className'] == 'Team') {
      return deserialize<_i10.Team>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i3.Example>(data['data']);
    }
    if (data['className'] == 'Toto') {
      return deserialize<_i4.Toto>(data['data']);
    }
    return super.deserializeByClassName(data);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'bluevsred';
}

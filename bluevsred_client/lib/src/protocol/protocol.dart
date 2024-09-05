/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'battle_db.dart' as _i2;
import 'battle_map_db.dart' as _i3;
import 'game_player_db.dart' as _i4;
import 'team_db.dart' as _i5;
import 'troop_db.dart' as _i6;
import 'troop_type.dart' as _i7;
export 'battle_db.dart';
export 'battle_map_db.dart';
export 'game_player_db.dart';
export 'team_db.dart';
export 'troop_db.dart';
export 'troop_type.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.BattleDb) {
      return _i2.BattleDb.fromJson(data) as T;
    }
    if (t == _i3.BattleMapDb) {
      return _i3.BattleMapDb.fromJson(data) as T;
    }
    if (t == _i4.GamePlayerDb) {
      return _i4.GamePlayerDb.fromJson(data) as T;
    }
    if (t == _i5.TeamDb) {
      return _i5.TeamDb.fromJson(data) as T;
    }
    if (t == _i6.TroopDb) {
      return _i6.TroopDb.fromJson(data) as T;
    }
    if (t == _i7.TroopType) {
      return _i7.TroopType.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.BattleDb?>()) {
      return (data != null ? _i2.BattleDb.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.BattleMapDb?>()) {
      return (data != null ? _i3.BattleMapDb.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.GamePlayerDb?>()) {
      return (data != null ? _i4.GamePlayerDb.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.TeamDb?>()) {
      return (data != null ? _i5.TeamDb.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.TroopDb?>()) {
      return (data != null ? _i6.TroopDb.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.TroopType?>()) {
      return (data != null ? _i7.TroopType.fromJson(data) : null) as T;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.BattleDb) {
      return 'BattleDb';
    }
    if (data is _i3.BattleMapDb) {
      return 'BattleMapDb';
    }
    if (data is _i4.GamePlayerDb) {
      return 'GamePlayerDb';
    }
    if (data is _i5.TeamDb) {
      return 'TeamDb';
    }
    if (data is _i6.TroopDb) {
      return 'TroopDb';
    }
    if (data is _i7.TroopType) {
      return 'TroopType';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'BattleDb') {
      return deserialize<_i2.BattleDb>(data['data']);
    }
    if (data['className'] == 'BattleMapDb') {
      return deserialize<_i3.BattleMapDb>(data['data']);
    }
    if (data['className'] == 'GamePlayerDb') {
      return deserialize<_i4.GamePlayerDb>(data['data']);
    }
    if (data['className'] == 'TeamDb') {
      return deserialize<_i5.TeamDb>(data['data']);
    }
    if (data['className'] == 'TroopDb') {
      return deserialize<_i6.TroopDb>(data['data']);
    }
    if (data['className'] == 'TroopType') {
      return deserialize<_i7.TroopType>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}

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
import 'battle_db.dart' as _i3;
import 'battle_map_db.dart' as _i4;
import 'game_player_db.dart' as _i5;
import 'team_db.dart' as _i6;
import 'troop_db.dart' as _i7;
import 'troop_type.dart' as _i8;
export 'battle_db.dart';
export 'battle_map_db.dart';
export 'game_player_db.dart';
export 'team_db.dart';
export 'troop_db.dart';
export 'troop_type.dart';

class Protocol extends _i1.SerializationManagerServer {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  static final List<_i2.TableDefinition> targetTableDefinitions = [
    _i2.TableDefinition(
      name: 'battle',
      dartName: 'BattleDb',
      schema: 'public',
      module: 'bluevsred',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'battle_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'creationDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'startDate',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _i2.ColumnDefinition(
          name: 'maxActionPoints',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _i2.ColumnDefinition(
          name: 'actionPointsRecoveryRate',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'battle_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'player',
      dartName: 'GamePlayerDb',
      schema: 'public',
      module: 'bluevsred',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'player_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'player_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'talle_map',
      dartName: 'BattleMapDb',
      schema: 'public',
      module: 'bluevsred',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'talle_map_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'path',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'talle_map_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'team',
      dartName: 'TeamDb',
      schema: 'public',
      module: 'bluevsred',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'team_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'name',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'colorCode',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'team_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    _i2.TableDefinition(
      name: 'troop',
      dartName: 'TroopDb',
      schema: 'public',
      module: 'bluevsred',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.integer,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'nextval(\'troop_id_seq\'::regclass)',
        ),
        _i2.ColumnDefinition(
          name: 'troopType',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:TroopType',
        ),
        _i2.ColumnDefinition(
          name: 'actionPoints',
          columnType: _i2.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'troop_pkey',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'id',
            )
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: true,
        )
      ],
      managed: true,
    ),
    ..._i2.Protocol.targetTableDefinitions,
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
    if (t == _i3.BattleDb) {
      return _i3.BattleDb.fromJson(data, this) as T;
    }
    if (t == _i4.BattleMapDb) {
      return _i4.BattleMapDb.fromJson(data, this) as T;
    }
    if (t == _i5.GamePlayerDb) {
      return _i5.GamePlayerDb.fromJson(data, this) as T;
    }
    if (t == _i6.TeamDb) {
      return _i6.TeamDb.fromJson(data, this) as T;
    }
    if (t == _i7.TroopDb) {
      return _i7.TroopDb.fromJson(data, this) as T;
    }
    if (t == _i8.TroopType) {
      return _i8.TroopType.fromJson(data) as T;
    }
    if (t == _i1.getType<_i3.BattleDb?>()) {
      return (data != null ? _i3.BattleDb.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.BattleMapDb?>()) {
      return (data != null ? _i4.BattleMapDb.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.GamePlayerDb?>()) {
      return (data != null ? _i5.GamePlayerDb.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.TeamDb?>()) {
      return (data != null ? _i6.TeamDb.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.TroopDb?>()) {
      return (data != null ? _i7.TroopDb.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i8.TroopType?>()) {
      return (data != null ? _i8.TroopType.fromJson(data) : null) as T;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i3.BattleDb) {
      return 'BattleDb';
    }
    if (data is _i4.BattleMapDb) {
      return 'BattleMapDb';
    }
    if (data is _i5.GamePlayerDb) {
      return 'GamePlayerDb';
    }
    if (data is _i6.TeamDb) {
      return 'TeamDb';
    }
    if (data is _i7.TroopDb) {
      return 'TroopDb';
    }
    if (data is _i8.TroopType) {
      return 'TroopType';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'BattleDb') {
      return deserialize<_i3.BattleDb>(data['data']);
    }
    if (data['className'] == 'BattleMapDb') {
      return deserialize<_i4.BattleMapDb>(data['data']);
    }
    if (data['className'] == 'GamePlayerDb') {
      return deserialize<_i5.GamePlayerDb>(data['data']);
    }
    if (data['className'] == 'TeamDb') {
      return deserialize<_i6.TeamDb>(data['data']);
    }
    if (data['className'] == 'TroopDb') {
      return deserialize<_i7.TroopDb>(data['data']);
    }
    if (data['className'] == 'TroopType') {
      return deserialize<_i8.TroopType>(data['data']);
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
    switch (t) {
      case _i3.BattleDb:
        return _i3.BattleDb.t;
      case _i4.BattleMapDb:
        return _i4.BattleMapDb.t;
      case _i5.GamePlayerDb:
        return _i5.GamePlayerDb.t;
      case _i6.TeamDb:
        return _i6.TeamDb.t;
      case _i7.TroopDb:
        return _i7.TroopDb.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'bluevsred';
}

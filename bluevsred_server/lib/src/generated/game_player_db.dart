/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class GamePlayerDb extends _i1.TableRow {
  GamePlayerDb._({
    int? id,
    required this.name,
  }) : super(id);

  factory GamePlayerDb({
    int? id,
    required String name,
  }) = _GamePlayerDbImpl;

  factory GamePlayerDb.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return GamePlayerDb(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
    );
  }

  static final t = GamePlayerDbTable();

  static const db = GamePlayerDbRepository._();

  String name;

  @override
  _i1.Table get table => t;

  GamePlayerDb copyWith({
    int? id,
    String? name,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<GamePlayerDb>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GamePlayerDbTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<GamePlayerDb>(
      where: where != null ? where(GamePlayerDb.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<GamePlayerDb?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GamePlayerDbTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<GamePlayerDb>(
      where: where != null ? where(GamePlayerDb.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<GamePlayerDb?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<GamePlayerDb>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<GamePlayerDbTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<GamePlayerDb>(
      where: where(GamePlayerDb.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    GamePlayerDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    GamePlayerDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    GamePlayerDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GamePlayerDbTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<GamePlayerDb>(
      where: where != null ? where(GamePlayerDb.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static GamePlayerDbInclude include() {
    return GamePlayerDbInclude._();
  }

  static GamePlayerDbIncludeList includeList({
    _i1.WhereExpressionBuilder<GamePlayerDbTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GamePlayerDbTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GamePlayerDbTable>? orderByList,
    GamePlayerDbInclude? include,
  }) {
    return GamePlayerDbIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(GamePlayerDb.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(GamePlayerDb.t),
      include: include,
    );
  }
}

class _Undefined {}

class _GamePlayerDbImpl extends GamePlayerDb {
  _GamePlayerDbImpl({
    int? id,
    required String name,
  }) : super._(
          id: id,
          name: name,
        );

  @override
  GamePlayerDb copyWith({
    Object? id = _Undefined,
    String? name,
  }) {
    return GamePlayerDb(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
    );
  }
}

class GamePlayerDbTable extends _i1.Table {
  GamePlayerDbTable({super.tableRelation}) : super(tableName: 'player') {
    name = _i1.ColumnString(
      'name',
      this,
    );
  }

  late final _i1.ColumnString name;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
      ];
}

@Deprecated('Use GamePlayerDbTable.t instead.')
GamePlayerDbTable tGamePlayerDb = GamePlayerDbTable();

class GamePlayerDbInclude extends _i1.IncludeObject {
  GamePlayerDbInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => GamePlayerDb.t;
}

class GamePlayerDbIncludeList extends _i1.IncludeList {
  GamePlayerDbIncludeList._({
    _i1.WhereExpressionBuilder<GamePlayerDbTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(GamePlayerDb.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => GamePlayerDb.t;
}

class GamePlayerDbRepository {
  const GamePlayerDbRepository._();

  Future<List<GamePlayerDb>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GamePlayerDbTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<GamePlayerDbTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GamePlayerDbTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<GamePlayerDb>(
      where: where?.call(GamePlayerDb.t),
      orderBy: orderBy?.call(GamePlayerDb.t),
      orderByList: orderByList?.call(GamePlayerDb.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<GamePlayerDb?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GamePlayerDbTable>? where,
    int? offset,
    _i1.OrderByBuilder<GamePlayerDbTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<GamePlayerDbTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<GamePlayerDb>(
      where: where?.call(GamePlayerDb.t),
      orderBy: orderBy?.call(GamePlayerDb.t),
      orderByList: orderByList?.call(GamePlayerDb.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<GamePlayerDb?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<GamePlayerDb>(
      id,
      transaction: transaction,
    );
  }

  Future<List<GamePlayerDb>> insert(
    _i1.Session session,
    List<GamePlayerDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<GamePlayerDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<GamePlayerDb> insertRow(
    _i1.Session session,
    GamePlayerDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<GamePlayerDb>(
      row,
      transaction: transaction,
    );
  }

  Future<List<GamePlayerDb>> update(
    _i1.Session session,
    List<GamePlayerDb> rows, {
    _i1.ColumnSelections<GamePlayerDbTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<GamePlayerDb>(
      rows,
      columns: columns?.call(GamePlayerDb.t),
      transaction: transaction,
    );
  }

  Future<GamePlayerDb> updateRow(
    _i1.Session session,
    GamePlayerDb row, {
    _i1.ColumnSelections<GamePlayerDbTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<GamePlayerDb>(
      row,
      columns: columns?.call(GamePlayerDb.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<GamePlayerDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<GamePlayerDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    GamePlayerDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<GamePlayerDb>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<GamePlayerDbTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<GamePlayerDb>(
      where: where(GamePlayerDb.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<GamePlayerDbTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<GamePlayerDb>(
      where: where?.call(GamePlayerDb.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

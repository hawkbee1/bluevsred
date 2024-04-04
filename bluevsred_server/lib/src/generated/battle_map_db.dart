/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class BattleMapDb extends _i1.TableRow {
  BattleMapDb._({
    int? id,
    required this.path,
  }) : super(id);

  factory BattleMapDb({
    int? id,
    required String path,
  }) = _BattleMapDbImpl;

  factory BattleMapDb.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BattleMapDb(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      path: serializationManager.deserialize<String>(jsonSerialization['path']),
    );
  }

  static final t = BattleMapDbTable();

  static const db = BattleMapDbRepository._();

  String path;

  @override
  _i1.Table get table => t;

  BattleMapDb copyWith({
    int? id,
    String? path,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'path': path,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'path': path,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'path': path,
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
      case 'path':
        path = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<BattleMapDb>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BattleMapDbTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<BattleMapDb>(
      where: where != null ? where(BattleMapDb.t) : null,
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
  static Future<BattleMapDb?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BattleMapDbTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<BattleMapDb>(
      where: where != null ? where(BattleMapDb.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<BattleMapDb?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<BattleMapDb>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BattleMapDbTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BattleMapDb>(
      where: where(BattleMapDb.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    BattleMapDb row, {
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
    BattleMapDb row, {
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
    BattleMapDb row, {
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
    _i1.WhereExpressionBuilder<BattleMapDbTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BattleMapDb>(
      where: where != null ? where(BattleMapDb.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BattleMapDbInclude include() {
    return BattleMapDbInclude._();
  }

  static BattleMapDbIncludeList includeList({
    _i1.WhereExpressionBuilder<BattleMapDbTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BattleMapDbTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BattleMapDbTable>? orderByList,
    BattleMapDbInclude? include,
  }) {
    return BattleMapDbIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BattleMapDb.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BattleMapDb.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BattleMapDbImpl extends BattleMapDb {
  _BattleMapDbImpl({
    int? id,
    required String path,
  }) : super._(
          id: id,
          path: path,
        );

  @override
  BattleMapDb copyWith({
    Object? id = _Undefined,
    String? path,
  }) {
    return BattleMapDb(
      id: id is int? ? id : this.id,
      path: path ?? this.path,
    );
  }
}

class BattleMapDbTable extends _i1.Table {
  BattleMapDbTable({super.tableRelation}) : super(tableName: 'talle_map') {
    path = _i1.ColumnString(
      'path',
      this,
    );
  }

  late final _i1.ColumnString path;

  @override
  List<_i1.Column> get columns => [
        id,
        path,
      ];
}

@Deprecated('Use BattleMapDbTable.t instead.')
BattleMapDbTable tBattleMapDb = BattleMapDbTable();

class BattleMapDbInclude extends _i1.IncludeObject {
  BattleMapDbInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => BattleMapDb.t;
}

class BattleMapDbIncludeList extends _i1.IncludeList {
  BattleMapDbIncludeList._({
    _i1.WhereExpressionBuilder<BattleMapDbTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BattleMapDb.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BattleMapDb.t;
}

class BattleMapDbRepository {
  const BattleMapDbRepository._();

  Future<List<BattleMapDb>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BattleMapDbTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BattleMapDbTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BattleMapDbTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<BattleMapDb>(
      where: where?.call(BattleMapDb.t),
      orderBy: orderBy?.call(BattleMapDb.t),
      orderByList: orderByList?.call(BattleMapDb.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<BattleMapDb?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BattleMapDbTable>? where,
    int? offset,
    _i1.OrderByBuilder<BattleMapDbTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BattleMapDbTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<BattleMapDb>(
      where: where?.call(BattleMapDb.t),
      orderBy: orderBy?.call(BattleMapDb.t),
      orderByList: orderByList?.call(BattleMapDb.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<BattleMapDb?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<BattleMapDb>(
      id,
      transaction: transaction,
    );
  }

  Future<List<BattleMapDb>> insert(
    _i1.Session session,
    List<BattleMapDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<BattleMapDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<BattleMapDb> insertRow(
    _i1.Session session,
    BattleMapDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<BattleMapDb>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BattleMapDb>> update(
    _i1.Session session,
    List<BattleMapDb> rows, {
    _i1.ColumnSelections<BattleMapDbTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<BattleMapDb>(
      rows,
      columns: columns?.call(BattleMapDb.t),
      transaction: transaction,
    );
  }

  Future<BattleMapDb> updateRow(
    _i1.Session session,
    BattleMapDb row, {
    _i1.ColumnSelections<BattleMapDbTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<BattleMapDb>(
      row,
      columns: columns?.call(BattleMapDb.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<BattleMapDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<BattleMapDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    BattleMapDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<BattleMapDb>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BattleMapDbTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<BattleMapDb>(
      where: where(BattleMapDb.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BattleMapDbTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<BattleMapDb>(
      where: where?.call(BattleMapDb.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

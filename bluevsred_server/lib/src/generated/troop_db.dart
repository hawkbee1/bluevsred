/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class TroopDb extends _i1.TableRow {
  TroopDb._({
    int? id,
    required this.troopType,
    required this.actionPoints,
  }) : super(id);

  factory TroopDb({
    int? id,
    required _i2.TroopType troopType,
    required double actionPoints,
  }) = _TroopDbImpl;

  factory TroopDb.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TroopDb(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      troopType: serializationManager
          .deserialize<_i2.TroopType>(jsonSerialization['troopType']),
      actionPoints: serializationManager
          .deserialize<double>(jsonSerialization['actionPoints']),
    );
  }

  static final t = TroopDbTable();

  static const db = TroopDbRepository._();

  _i2.TroopType troopType;

  double actionPoints;

  @override
  _i1.Table get table => t;

  TroopDb copyWith({
    int? id,
    _i2.TroopType? troopType,
    double? actionPoints,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'troopType': troopType.toJson(),
      'actionPoints': actionPoints,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'troopType': troopType,
      'actionPoints': actionPoints,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'troopType': troopType.toJson(),
      'actionPoints': actionPoints,
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
      case 'troopType':
        troopType = value;
        return;
      case 'actionPoints':
        actionPoints = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<TroopDb>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TroopDbTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<TroopDb>(
      where: where != null ? where(TroopDb.t) : null,
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
  static Future<TroopDb?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TroopDbTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<TroopDb>(
      where: where != null ? where(TroopDb.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<TroopDb?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<TroopDb>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TroopDbTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TroopDb>(
      where: where(TroopDb.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    TroopDb row, {
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
    TroopDb row, {
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
    TroopDb row, {
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
    _i1.WhereExpressionBuilder<TroopDbTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TroopDb>(
      where: where != null ? where(TroopDb.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static TroopDbInclude include() {
    return TroopDbInclude._();
  }

  static TroopDbIncludeList includeList({
    _i1.WhereExpressionBuilder<TroopDbTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TroopDbTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TroopDbTable>? orderByList,
    TroopDbInclude? include,
  }) {
    return TroopDbIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TroopDb.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(TroopDb.t),
      include: include,
    );
  }
}

class _Undefined {}

class _TroopDbImpl extends TroopDb {
  _TroopDbImpl({
    int? id,
    required _i2.TroopType troopType,
    required double actionPoints,
  }) : super._(
          id: id,
          troopType: troopType,
          actionPoints: actionPoints,
        );

  @override
  TroopDb copyWith({
    Object? id = _Undefined,
    _i2.TroopType? troopType,
    double? actionPoints,
  }) {
    return TroopDb(
      id: id is int? ? id : this.id,
      troopType: troopType ?? this.troopType,
      actionPoints: actionPoints ?? this.actionPoints,
    );
  }
}

class TroopDbTable extends _i1.Table {
  TroopDbTable({super.tableRelation}) : super(tableName: 'troop') {
    troopType = _i1.ColumnEnum(
      'troopType',
      this,
      _i1.EnumSerialization.byName,
    );
    actionPoints = _i1.ColumnDouble(
      'actionPoints',
      this,
    );
  }

  late final _i1.ColumnEnum<_i2.TroopType> troopType;

  late final _i1.ColumnDouble actionPoints;

  @override
  List<_i1.Column> get columns => [
        id,
        troopType,
        actionPoints,
      ];
}

@Deprecated('Use TroopDbTable.t instead.')
TroopDbTable tTroopDb = TroopDbTable();

class TroopDbInclude extends _i1.IncludeObject {
  TroopDbInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => TroopDb.t;
}

class TroopDbIncludeList extends _i1.IncludeList {
  TroopDbIncludeList._({
    _i1.WhereExpressionBuilder<TroopDbTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(TroopDb.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => TroopDb.t;
}

class TroopDbRepository {
  const TroopDbRepository._();

  Future<List<TroopDb>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TroopDbTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TroopDbTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TroopDbTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<TroopDb>(
      where: where?.call(TroopDb.t),
      orderBy: orderBy?.call(TroopDb.t),
      orderByList: orderByList?.call(TroopDb.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<TroopDb?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TroopDbTable>? where,
    int? offset,
    _i1.OrderByBuilder<TroopDbTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TroopDbTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<TroopDb>(
      where: where?.call(TroopDb.t),
      orderBy: orderBy?.call(TroopDb.t),
      orderByList: orderByList?.call(TroopDb.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<TroopDb?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<TroopDb>(
      id,
      transaction: transaction,
    );
  }

  Future<List<TroopDb>> insert(
    _i1.Session session,
    List<TroopDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<TroopDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<TroopDb> insertRow(
    _i1.Session session,
    TroopDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<TroopDb>(
      row,
      transaction: transaction,
    );
  }

  Future<List<TroopDb>> update(
    _i1.Session session,
    List<TroopDb> rows, {
    _i1.ColumnSelections<TroopDbTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<TroopDb>(
      rows,
      columns: columns?.call(TroopDb.t),
      transaction: transaction,
    );
  }

  Future<TroopDb> updateRow(
    _i1.Session session,
    TroopDb row, {
    _i1.ColumnSelections<TroopDbTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<TroopDb>(
      row,
      columns: columns?.call(TroopDb.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<TroopDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<TroopDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    TroopDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<TroopDb>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TroopDbTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<TroopDb>(
      where: where(TroopDb.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TroopDbTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<TroopDb>(
      where: where?.call(TroopDb.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

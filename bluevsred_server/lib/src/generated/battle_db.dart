/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class BattleDb extends _i1.TableRow {
  BattleDb._({
    int? id,
    required this.creationDate,
    required this.startDate,
    required this.maxActionPoints,
    required this.actionPointsRecoveryRate,
  }) : super(id);

  factory BattleDb({
    int? id,
    required DateTime creationDate,
    required DateTime startDate,
    required double maxActionPoints,
    required double actionPointsRecoveryRate,
  }) = _BattleDbImpl;

  factory BattleDb.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BattleDb(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      creationDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['creationDate']),
      startDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['startDate']),
      maxActionPoints: serializationManager
          .deserialize<double>(jsonSerialization['maxActionPoints']),
      actionPointsRecoveryRate: serializationManager
          .deserialize<double>(jsonSerialization['actionPointsRecoveryRate']),
    );
  }

  static final t = BattleDbTable();

  static const db = BattleDbRepository._();

  DateTime creationDate;

  DateTime startDate;

  double maxActionPoints;

  double actionPointsRecoveryRate;

  @override
  _i1.Table get table => t;

  BattleDb copyWith({
    int? id,
    DateTime? creationDate,
    DateTime? startDate,
    double? maxActionPoints,
    double? actionPointsRecoveryRate,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'creationDate': creationDate.toJson(),
      'startDate': startDate.toJson(),
      'maxActionPoints': maxActionPoints,
      'actionPointsRecoveryRate': actionPointsRecoveryRate,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'creationDate': creationDate,
      'startDate': startDate,
      'maxActionPoints': maxActionPoints,
      'actionPointsRecoveryRate': actionPointsRecoveryRate,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'creationDate': creationDate.toJson(),
      'startDate': startDate.toJson(),
      'maxActionPoints': maxActionPoints,
      'actionPointsRecoveryRate': actionPointsRecoveryRate,
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
      case 'creationDate':
        creationDate = value;
        return;
      case 'startDate':
        startDate = value;
        return;
      case 'maxActionPoints':
        maxActionPoints = value;
        return;
      case 'actionPointsRecoveryRate':
        actionPointsRecoveryRate = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<BattleDb>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BattleDbTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<BattleDb>(
      where: where != null ? where(BattleDb.t) : null,
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
  static Future<BattleDb?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BattleDbTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<BattleDb>(
      where: where != null ? where(BattleDb.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<BattleDb?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<BattleDb>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BattleDbTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BattleDb>(
      where: where(BattleDb.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    BattleDb row, {
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
    BattleDb row, {
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
    BattleDb row, {
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
    _i1.WhereExpressionBuilder<BattleDbTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<BattleDb>(
      where: where != null ? where(BattleDb.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BattleDbInclude include() {
    return BattleDbInclude._();
  }

  static BattleDbIncludeList includeList({
    _i1.WhereExpressionBuilder<BattleDbTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BattleDbTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BattleDbTable>? orderByList,
    BattleDbInclude? include,
  }) {
    return BattleDbIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(BattleDb.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(BattleDb.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BattleDbImpl extends BattleDb {
  _BattleDbImpl({
    int? id,
    required DateTime creationDate,
    required DateTime startDate,
    required double maxActionPoints,
    required double actionPointsRecoveryRate,
  }) : super._(
          id: id,
          creationDate: creationDate,
          startDate: startDate,
          maxActionPoints: maxActionPoints,
          actionPointsRecoveryRate: actionPointsRecoveryRate,
        );

  @override
  BattleDb copyWith({
    Object? id = _Undefined,
    DateTime? creationDate,
    DateTime? startDate,
    double? maxActionPoints,
    double? actionPointsRecoveryRate,
  }) {
    return BattleDb(
      id: id is int? ? id : this.id,
      creationDate: creationDate ?? this.creationDate,
      startDate: startDate ?? this.startDate,
      maxActionPoints: maxActionPoints ?? this.maxActionPoints,
      actionPointsRecoveryRate:
          actionPointsRecoveryRate ?? this.actionPointsRecoveryRate,
    );
  }
}

class BattleDbTable extends _i1.Table {
  BattleDbTable({super.tableRelation}) : super(tableName: 'battle') {
    creationDate = _i1.ColumnDateTime(
      'creationDate',
      this,
    );
    startDate = _i1.ColumnDateTime(
      'startDate',
      this,
    );
    maxActionPoints = _i1.ColumnDouble(
      'maxActionPoints',
      this,
    );
    actionPointsRecoveryRate = _i1.ColumnDouble(
      'actionPointsRecoveryRate',
      this,
    );
  }

  late final _i1.ColumnDateTime creationDate;

  late final _i1.ColumnDateTime startDate;

  late final _i1.ColumnDouble maxActionPoints;

  late final _i1.ColumnDouble actionPointsRecoveryRate;

  @override
  List<_i1.Column> get columns => [
        id,
        creationDate,
        startDate,
        maxActionPoints,
        actionPointsRecoveryRate,
      ];
}

@Deprecated('Use BattleDbTable.t instead.')
BattleDbTable tBattleDb = BattleDbTable();

class BattleDbInclude extends _i1.IncludeObject {
  BattleDbInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => BattleDb.t;
}

class BattleDbIncludeList extends _i1.IncludeList {
  BattleDbIncludeList._({
    _i1.WhereExpressionBuilder<BattleDbTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(BattleDb.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => BattleDb.t;
}

class BattleDbRepository {
  const BattleDbRepository._();

  Future<List<BattleDb>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BattleDbTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BattleDbTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BattleDbTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<BattleDb>(
      where: where?.call(BattleDb.t),
      orderBy: orderBy?.call(BattleDb.t),
      orderByList: orderByList?.call(BattleDb.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<BattleDb?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BattleDbTable>? where,
    int? offset,
    _i1.OrderByBuilder<BattleDbTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BattleDbTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<BattleDb>(
      where: where?.call(BattleDb.t),
      orderBy: orderBy?.call(BattleDb.t),
      orderByList: orderByList?.call(BattleDb.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<BattleDb?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<BattleDb>(
      id,
      transaction: transaction,
    );
  }

  Future<List<BattleDb>> insert(
    _i1.Session session,
    List<BattleDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<BattleDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<BattleDb> insertRow(
    _i1.Session session,
    BattleDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<BattleDb>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BattleDb>> update(
    _i1.Session session,
    List<BattleDb> rows, {
    _i1.ColumnSelections<BattleDbTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<BattleDb>(
      rows,
      columns: columns?.call(BattleDb.t),
      transaction: transaction,
    );
  }

  Future<BattleDb> updateRow(
    _i1.Session session,
    BattleDb row, {
    _i1.ColumnSelections<BattleDbTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<BattleDb>(
      row,
      columns: columns?.call(BattleDb.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<BattleDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<BattleDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    BattleDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<BattleDb>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BattleDbTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<BattleDb>(
      where: where(BattleDb.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BattleDbTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<BattleDb>(
      where: where?.call(BattleDb.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

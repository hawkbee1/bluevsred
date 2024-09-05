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

abstract class TroopDb extends _i1.TableRow
    implements _i1.ProtocolSerialization {
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

  factory TroopDb.fromJson(Map<String, dynamic> jsonSerialization) {
    return TroopDb(
      id: jsonSerialization['id'] as int?,
      troopType:
          _i2.TroopType.fromJson((jsonSerialization['troopType'] as String)),
      actionPoints: (jsonSerialization['actionPoints'] as num).toDouble(),
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'troopType': troopType.toJson(),
      'actionPoints': actionPoints,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    return session.db.find<TroopDb>(
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
    return session.db.findFirstRow<TroopDb>(
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
    return session.db.findById<TroopDb>(
      id,
      transaction: transaction,
    );
  }

  Future<List<TroopDb>> insert(
    _i1.Session session,
    List<TroopDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<TroopDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<TroopDb> insertRow(
    _i1.Session session,
    TroopDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<TroopDb>(
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
    return session.db.update<TroopDb>(
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
    return session.db.updateRow<TroopDb>(
      row,
      columns: columns?.call(TroopDb.t),
      transaction: transaction,
    );
  }

  Future<List<TroopDb>> delete(
    _i1.Session session,
    List<TroopDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TroopDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<TroopDb> deleteRow(
    _i1.Session session,
    TroopDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<TroopDb>(
      row,
      transaction: transaction,
    );
  }

  Future<List<TroopDb>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TroopDbTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<TroopDb>(
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
    return session.db.count<TroopDb>(
      where: where?.call(TroopDb.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

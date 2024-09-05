/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class BattleMapDb extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  BattleMapDb._({
    int? id,
    required this.path,
  }) : super(id);

  factory BattleMapDb({
    int? id,
    required String path,
  }) = _BattleMapDbImpl;

  factory BattleMapDb.fromJson(Map<String, dynamic> jsonSerialization) {
    return BattleMapDb(
      id: jsonSerialization['id'] as int?,
      path: jsonSerialization['path'] as String,
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'path': path,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    return session.db.find<BattleMapDb>(
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
    return session.db.findFirstRow<BattleMapDb>(
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
    return session.db.findById<BattleMapDb>(
      id,
      transaction: transaction,
    );
  }

  Future<List<BattleMapDb>> insert(
    _i1.Session session,
    List<BattleMapDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<BattleMapDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<BattleMapDb> insertRow(
    _i1.Session session,
    BattleMapDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<BattleMapDb>(
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
    return session.db.update<BattleMapDb>(
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
    return session.db.updateRow<BattleMapDb>(
      row,
      columns: columns?.call(BattleMapDb.t),
      transaction: transaction,
    );
  }

  Future<List<BattleMapDb>> delete(
    _i1.Session session,
    List<BattleMapDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<BattleMapDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<BattleMapDb> deleteRow(
    _i1.Session session,
    BattleMapDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<BattleMapDb>(
      row,
      transaction: transaction,
    );
  }

  Future<List<BattleMapDb>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BattleMapDbTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<BattleMapDb>(
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
    return session.db.count<BattleMapDb>(
      where: where?.call(BattleMapDb.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

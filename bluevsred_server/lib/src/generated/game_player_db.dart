/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class GamePlayerDb extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  GamePlayerDb._({
    int? id,
    required this.name,
  }) : super(id);

  factory GamePlayerDb({
    int? id,
    required String name,
  }) = _GamePlayerDbImpl;

  factory GamePlayerDb.fromJson(Map<String, dynamic> jsonSerialization) {
    return GamePlayerDb(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    return session.db.find<GamePlayerDb>(
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
    return session.db.findFirstRow<GamePlayerDb>(
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
    return session.db.findById<GamePlayerDb>(
      id,
      transaction: transaction,
    );
  }

  Future<List<GamePlayerDb>> insert(
    _i1.Session session,
    List<GamePlayerDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<GamePlayerDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<GamePlayerDb> insertRow(
    _i1.Session session,
    GamePlayerDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<GamePlayerDb>(
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
    return session.db.update<GamePlayerDb>(
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
    return session.db.updateRow<GamePlayerDb>(
      row,
      columns: columns?.call(GamePlayerDb.t),
      transaction: transaction,
    );
  }

  Future<List<GamePlayerDb>> delete(
    _i1.Session session,
    List<GamePlayerDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<GamePlayerDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<GamePlayerDb> deleteRow(
    _i1.Session session,
    GamePlayerDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<GamePlayerDb>(
      row,
      transaction: transaction,
    );
  }

  Future<List<GamePlayerDb>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<GamePlayerDbTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<GamePlayerDb>(
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
    return session.db.count<GamePlayerDb>(
      where: where?.call(GamePlayerDb.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

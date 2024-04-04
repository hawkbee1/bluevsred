/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class TeamDb extends _i1.TableRow {
  TeamDb._({
    int? id,
    required this.name,
    required this.colorCode,
  }) : super(id);

  factory TeamDb({
    int? id,
    required String name,
    required String colorCode,
  }) = _TeamDbImpl;

  factory TeamDb.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return TeamDb(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      colorCode: serializationManager
          .deserialize<String>(jsonSerialization['colorCode']),
    );
  }

  static final t = TeamDbTable();

  static const db = TeamDbRepository._();

  String name;

  String colorCode;

  @override
  _i1.Table get table => t;

  TeamDb copyWith({
    int? id,
    String? name,
    String? colorCode,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'colorCode': colorCode,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'name': name,
      'colorCode': colorCode,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'colorCode': colorCode,
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
      case 'colorCode':
        colorCode = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<TeamDb>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TeamDbTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<TeamDb>(
      where: where != null ? where(TeamDb.t) : null,
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
  static Future<TeamDb?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TeamDbTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<TeamDb>(
      where: where != null ? where(TeamDb.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<TeamDb?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<TeamDb>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TeamDbTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TeamDb>(
      where: where(TeamDb.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    TeamDb row, {
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
    TeamDb row, {
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
    TeamDb row, {
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
    _i1.WhereExpressionBuilder<TeamDbTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TeamDb>(
      where: where != null ? where(TeamDb.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static TeamDbInclude include() {
    return TeamDbInclude._();
  }

  static TeamDbIncludeList includeList({
    _i1.WhereExpressionBuilder<TeamDbTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TeamDbTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TeamDbTable>? orderByList,
    TeamDbInclude? include,
  }) {
    return TeamDbIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TeamDb.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(TeamDb.t),
      include: include,
    );
  }
}

class _Undefined {}

class _TeamDbImpl extends TeamDb {
  _TeamDbImpl({
    int? id,
    required String name,
    required String colorCode,
  }) : super._(
          id: id,
          name: name,
          colorCode: colorCode,
        );

  @override
  TeamDb copyWith({
    Object? id = _Undefined,
    String? name,
    String? colorCode,
  }) {
    return TeamDb(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      colorCode: colorCode ?? this.colorCode,
    );
  }
}

class TeamDbTable extends _i1.Table {
  TeamDbTable({super.tableRelation}) : super(tableName: 'team') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    colorCode = _i1.ColumnString(
      'colorCode',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString colorCode;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        colorCode,
      ];
}

@Deprecated('Use TeamDbTable.t instead.')
TeamDbTable tTeamDb = TeamDbTable();

class TeamDbInclude extends _i1.IncludeObject {
  TeamDbInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => TeamDb.t;
}

class TeamDbIncludeList extends _i1.IncludeList {
  TeamDbIncludeList._({
    _i1.WhereExpressionBuilder<TeamDbTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(TeamDb.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => TeamDb.t;
}

class TeamDbRepository {
  const TeamDbRepository._();

  Future<List<TeamDb>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TeamDbTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TeamDbTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TeamDbTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<TeamDb>(
      where: where?.call(TeamDb.t),
      orderBy: orderBy?.call(TeamDb.t),
      orderByList: orderByList?.call(TeamDb.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<TeamDb?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TeamDbTable>? where,
    int? offset,
    _i1.OrderByBuilder<TeamDbTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TeamDbTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<TeamDb>(
      where: where?.call(TeamDb.t),
      orderBy: orderBy?.call(TeamDb.t),
      orderByList: orderByList?.call(TeamDb.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<TeamDb?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<TeamDb>(
      id,
      transaction: transaction,
    );
  }

  Future<List<TeamDb>> insert(
    _i1.Session session,
    List<TeamDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<TeamDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<TeamDb> insertRow(
    _i1.Session session,
    TeamDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<TeamDb>(
      row,
      transaction: transaction,
    );
  }

  Future<List<TeamDb>> update(
    _i1.Session session,
    List<TeamDb> rows, {
    _i1.ColumnSelections<TeamDbTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<TeamDb>(
      rows,
      columns: columns?.call(TeamDb.t),
      transaction: transaction,
    );
  }

  Future<TeamDb> updateRow(
    _i1.Session session,
    TeamDb row, {
    _i1.ColumnSelections<TeamDbTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<TeamDb>(
      row,
      columns: columns?.call(TeamDb.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<TeamDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<TeamDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    TeamDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<TeamDb>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TeamDbTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<TeamDb>(
      where: where(TeamDb.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TeamDbTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<TeamDb>(
      where: where?.call(TeamDb.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

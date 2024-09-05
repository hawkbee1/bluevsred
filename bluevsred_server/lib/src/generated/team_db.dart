/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class TeamDb extends _i1.TableRow
    implements _i1.ProtocolSerialization {
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

  factory TeamDb.fromJson(Map<String, dynamic> jsonSerialization) {
    return TeamDb(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      colorCode: jsonSerialization['colorCode'] as String,
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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'colorCode': colorCode,
    };
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
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
    return session.db.find<TeamDb>(
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
    return session.db.findFirstRow<TeamDb>(
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
    return session.db.findById<TeamDb>(
      id,
      transaction: transaction,
    );
  }

  Future<List<TeamDb>> insert(
    _i1.Session session,
    List<TeamDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<TeamDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<TeamDb> insertRow(
    _i1.Session session,
    TeamDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<TeamDb>(
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
    return session.db.update<TeamDb>(
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
    return session.db.updateRow<TeamDb>(
      row,
      columns: columns?.call(TeamDb.t),
      transaction: transaction,
    );
  }

  Future<List<TeamDb>> delete(
    _i1.Session session,
    List<TeamDb> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TeamDb>(
      rows,
      transaction: transaction,
    );
  }

  Future<TeamDb> deleteRow(
    _i1.Session session,
    TeamDb row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<TeamDb>(
      row,
      transaction: transaction,
    );
  }

  Future<List<TeamDb>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TeamDbTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<TeamDb>(
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
    return session.db.count<TeamDb>(
      where: where?.call(TeamDb.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

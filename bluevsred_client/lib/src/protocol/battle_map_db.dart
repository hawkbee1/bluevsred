/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class BattleMapDb implements _i1.SerializableModel {
  BattleMapDb._({
    this.id,
    required this.path,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String path;

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

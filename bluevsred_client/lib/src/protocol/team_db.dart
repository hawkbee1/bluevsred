/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class TeamDb implements _i1.SerializableModel {
  TeamDb._({
    this.id,
    required this.name,
    required this.colorCode,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String colorCode;

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

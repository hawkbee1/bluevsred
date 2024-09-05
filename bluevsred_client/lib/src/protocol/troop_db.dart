/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

abstract class TroopDb implements _i1.SerializableModel {
  TroopDb._({
    this.id,
    required this.troopType,
    required this.actionPoints,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  _i2.TroopType troopType;

  double actionPoints;

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

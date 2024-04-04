/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class BattleDb extends _i1.SerializableEntity {
  BattleDb._({
    this.id,
    required this.creationDate,
    required this.startDate,
    required this.maxActionPoints,
    required this.actionPointsRecoveryRate,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  DateTime creationDate;

  DateTime startDate;

  double maxActionPoints;

  double actionPointsRecoveryRate;

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
